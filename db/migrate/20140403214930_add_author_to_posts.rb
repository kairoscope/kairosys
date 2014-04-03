class AddAuthorToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :user_id, :integer
    add_column :posts, :visibility, :string
    add_index :posts, ["user_id"]
  end
  
  def self.down
    remove_column :posts, :user_id, :integer
    remove_column :posts, :visibility, :string
    remove_index :posts, ["user_id"]
  end
end
