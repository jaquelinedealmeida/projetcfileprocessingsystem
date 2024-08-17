class CreateDocuments < ActiveRecord::Migration[7.2]
  def change
    create_table :documents do |t|
      t.references :user, null: false, foreign_key: true
      t.string :file
      t.text :description

      t.timestamps
    end
  end
end
