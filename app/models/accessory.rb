class Accessory < ApplicationRecord
    has_many :accessory_orders
    has_many :orders, through: :accessory_orders
end
