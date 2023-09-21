class CreateAccessoriesOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :accessories_orders, :id=>false do |t|
      t.integer :accessory_id
      t.integer :order_id

    end
  end
end
