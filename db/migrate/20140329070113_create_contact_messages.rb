class CreateContactMessages < ActiveRecord::Migration
  def change
    create_table :contact_messages do |t|
      t.string :email, required: true 
      t.text :message, required: true

      t.timestamps
    end
  end
end
