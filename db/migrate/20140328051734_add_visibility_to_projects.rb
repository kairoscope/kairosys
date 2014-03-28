class AddVisibilityToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :visibility, :string
  end
  
  def self.down
    remove_column :projects, :visibility, :string
  end
end
