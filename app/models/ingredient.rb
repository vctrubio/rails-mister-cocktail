class Ingredient < ApplicationRecord
    has_many :doses
    has_many :cocktails, through: :doses

    validates :name, uniqueness: true , presence: true

    CATEGORIES = ["limon", "apple"]
        #  should not be able to destroy self if has dose children (FAILED - 16)

    
end
