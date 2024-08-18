class RemoveUserIdFromDocuments < ActiveRecord::Migration[7.2]
  def change
    remove_column :documents, :user_id, :integer
  end
end
