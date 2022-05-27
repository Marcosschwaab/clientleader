class Client < ApplicationRecord
    has_many :orders, :dependent => :destroy
    validates_presence_of :name_complete
    validates_presence_of :phone
    validates_uniqueness_of :name_complete
end
