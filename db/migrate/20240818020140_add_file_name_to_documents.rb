class AddFileNameToDocuments < ActiveRecord::Migration[7.2]
  def change
    add_column :documents, :file_name, :string
  end
end
