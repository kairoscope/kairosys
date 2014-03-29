class AddDescriptionToUser < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string, required: true
    add_column :users, :last_name, :string, required: true
    add_column :users, :description, :string
    add_column :users, :avatar, :string
    add_column :users, :team_member, :bool
    add_column :users, :member_title, :string
    
  end
  
  def self.down
    remove_column :users, :first_name, :string, required: true
    remove_column :users, :last_name, :string, required: true
    remove_column :users, :description, :string
    remove_column :users, :avatar, :string
    remove_column :users, :team_member, :bool
    remove_column :users, :member_title, :string
  end
end
