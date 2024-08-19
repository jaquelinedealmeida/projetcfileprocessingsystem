class ReportsController < ApplicationController
  def index
    @documents = Document.all

    @documents = @documents.where('serie = ?', params[:serie]) if params[:serie].present?
    @documents = @documents.where('nNF = ?', params[:nNF]) if params[:nNF].present?
    @documents = @documents.where('dhEmi >= ?', params[:start_date]) if params[:start_date].present?
    @documents = @documents.where('dhEmi <= ?', params[:end_date]) if params[:end_date].present?
    @documents = @documents.where('emit LIKE ?', "%#{params[:emit]}%") if params[:emit].present?
    @documents = @documents.where('dest LIKE ?', "%#{params[:dest]}%") if params[:dest].present?

    @documents = @documents.order(created_at: :desc)
  end

  def show
    @document = Document.find(params[:id])

    ns = { 'nfe' => 'http://www.portalfiscal.inf.br/nfe' }

    if @document.file.attached?
      file_content = @document.file.download
      doc = Nokogiri::XML(file_content)

      @serie = doc.at_xpath('//nfe:serie', ns)&.text
      @nNF = doc.at_xpath('//nfe:nNF', ns)&.text
      @dhEmi = doc.at_xpath('//nfe:dhEmi', ns)&.text
      @emit = doc.at_xpath('//nfe:emit/nfe:xNome', ns)&.text
      @dest = doc.at_xpath('//nfe:dest/nfe:xNome', ns)&.text

    @products = []

    doc.xpath('//nfe:det', ns).each do |det|
      product = {
        name: det.at_xpath('nfe:prod/nfe:xProd', ns)&.text,
        ncm: det.at_xpath('nfe:prod/nfe:NCM', ns)&.text,
        quantidade: det.at_xpath('nfe:prod/nfe:qCom', ns)&.text,
        valor_unitario: det.at_xpath('nfe:prod/nfe:vUnCom', ns)&.text,
        valor_total: det.at_xpath('nfe:prod/nfe:vProd', ns)&.text
      }
      @products << product
    end

    @taxes = {}

    @taxes[:icms] = doc.at_xpath('//nfe:ICMS00/nfe:vICMS', ns)&.text || "0"
    @taxes[:ipi] = doc.at_xpath('//nfe:IPITrib/nfe:vIPI', ns)&.text || "0"
    @taxes[:pis] = doc.at_xpath('//nfe:PISNT/nfe:vPIS', ns)&.text || "0"
    @taxes[:cofins] = doc.at_xpath('//nfe:COFINSNT/nfe:vCOFINS', ns)&.text || "0"

    @total_produtos = doc.at_xpath('//nfe:ICMSTot/nfe:vProd', ns)&.text || "0"
    @total_impostos = doc.at_xpath('//nfe:ICMSTot/nfe:vTotTrib', ns)&.text || "0"

    else
      flash[:error] = "Arquivo não encontrado"
      redirect_to documents_path
    end
  end
end
