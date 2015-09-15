class RenameColumnPostId < ActiveRecord::Migration
  def change
    rename_column :comments, :post_id, :status_id
    add_index :comments, :status_id, unique: true
    add_index :comments, :user_id, unique: true
  end
end
