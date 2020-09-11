class VendorSweet < ApplicationRecord
    belongs_to :vendor 
    belongs_to :sweet

    validates_presence_of :price 
    validates_numericality_of :price, { greater_than: 0 }
end