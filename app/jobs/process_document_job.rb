class ProcessDocumentJob < ApplicationJob
  queue_as :default

  def perform(document_id)
    document = Document.find(document_id)

    if document.file.attached?
      xml_content = document.file.download
      process_xml(xml_content)
    end
  end

  private

   def valid_xml_structure?(doc)
    required_elements = %w[//serie //nNF //dhEmi //emit //dest //xProd //NCM //CFOP //uCom //qCom //vUnCom //vICMS //vIPI //vPIS //vCOFINS]

    required_elements.all? do |xpath|
      !doc.at_xpath(xpath).nil?
    end
  end

  def process_xml(xml_content)
    doc = Nokogiri::XML(xml_content)

    serie_node = doc.at_xpath('//serie')
    serie = serie_node ? serie_node.text : "Elemento não encontrado"

    nNF_node = doc.at_xpath('//nNF')
    nNF = nNF_node ? nNF_node.text : "Elemento não encontrado"
    
    dhEmi_node = doc.at_xpath('//dhEmi')
    dhEmi = dhEmi_node ? dhEmi_node : "Elemento não encontrado"

    doc.xpath('//produto').each do |produto|
      xProd = produto.at_xpath('xProd').text
      ncm = produto.at_xpath('NCM').text
      cfop = produto.at_xpath('CFOP').text
      uCom = produto.at_xpath('uCom').text
      qCom = produto.at_xpath('qCom').text
      vUnCom = produto.at_xpath('vUnCom').text
    end

    vICMS_node = doc.at_xpath('//vICMS')
    vICMS = vICMS_node ? vICMS_node : "Elemento não encontrado"
    vIPI_node = doc.at_xpath('//vIPI')
    vIPI = vIPI_node ? vIPI_node : "Elemento não encontrado"
    vPIS_node = doc.at_xpath('//vPIS')
    vPIS = vPIS_node ? vPIS_node : "Elemento não encontrado"
    vCOFINS_node = doc.at_xpath('//vCOFINS')
    vCOFINS = vCOFINS_node ? vCOFINS_node : "Elemento não encontrado"

    total_produtos = doc.xpath('//produto/vUnCom').map(&:text).map(&:to_f).sum
    total_impostos = [vICMS, vIPI, vPIS, vCOFINS].map(&:to_f).sum
  end
end