class Accessory < ApplicationRecord
    has_many :accessories_orders
    has_many :orders, through: :accessories_orders
end
