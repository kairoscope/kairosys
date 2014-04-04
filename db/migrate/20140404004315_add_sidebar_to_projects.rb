class AddSidebarToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :sidebar, :text
    add_column :projects, :thumbnail_url, :string
  end
  
  def self.down
      remove_column :projects, :sidebar, :text
      remove_column :projects, :thumbnail_url, :string
  end
end
