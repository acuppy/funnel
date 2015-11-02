class AddCollectorIdToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :collector_id, :integer
    add_index :contacts, :collector_id
  end
end
