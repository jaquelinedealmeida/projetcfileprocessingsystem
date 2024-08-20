class Document < ApplicationRecord
  has_one_attached :file

  validates :file, attached: true
  validate :correct_file_type

  private

  def correct_file_type
    if file.attached?
      allowed_types = [ "text/xml", "application/xml", "application/x-xml" ]
      unless allowed_types.include?(file.content_type)
        errors.add(:file, "Must be an XML file")
      end
    else
      errors.add(:file, "Must be attached")
    end
  end
end
