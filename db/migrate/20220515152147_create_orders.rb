class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :client_id
      t.date :date
      t.integer :mark_id
      t.string :model
      t.string :serial_number
      t.integer :accessory_id
      t.text :bug
      t.text :solution
      t.integer :stat_id
      t.text :observation
      t.decimal :price
      t.integer :equipament_id
      t.integer :progre_id
      t.text :control_internal
      t.integer :sector_id

      t.timestamps
    end
  end
end
