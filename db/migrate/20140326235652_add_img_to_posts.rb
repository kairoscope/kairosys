class AddImgToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :cover_image_url, :string
    add_column :posts, :image_url, :string
    add_column :posts, :description, :string
  end
  
  def self.down
    remove_column :posts, :cover_image_url, :string
    remove_column :posts, :image_url, :string
    remove_column :posts, :description, :string
  end
  
end
