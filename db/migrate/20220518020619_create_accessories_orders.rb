class CreateAccessoriesOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :accessories_orders do |t|
      t.integer :accessory_id
      t.integer :order_id

      t.timestamps
    end
  end
end
