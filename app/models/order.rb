class Order < ApplicationRecord
    has_many :accessories_orders
    has_many :accessories, through: :accessories_orders
      belongs_to :client
      belongs_to :mark
      belongs_to :stat
      belongs_to :sector
      belongs_to :equipament
      belongs_to :progre
      
      accepts_nested_attributes_for :accessories
  
      ransacker :id do
        Arel.sql("CONVERT(`#{table_name}`.`id`, CHAR(8))")
      end
      
end
