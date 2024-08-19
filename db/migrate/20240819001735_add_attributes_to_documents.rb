class AddAttributesToDocuments < ActiveRecord::Migration[7.2]
  def change
    add_column :documents, :serie, :string
    add_column :documents, :nNF, :string
    add_column :documents, :dhEmi, :datetime
    add_column :documents, :emit, :string
    add_column :documents, :dest, :string
  end
end
