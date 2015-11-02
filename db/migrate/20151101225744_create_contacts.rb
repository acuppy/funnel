class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :fullname
      t.string :email

      t.timestamps null: false
    end
    add_index :contacts, :email
  end
end
