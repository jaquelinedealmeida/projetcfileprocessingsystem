class Document < ApplicationRecord
  belongs_to :user

  has_one_attached :file
  # has_many_attached :files

  validates :file, attached: true, content_type: ['application/xml']
end
