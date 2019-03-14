class Cocktail < ApplicationRecord
    has_many :doses, dependent: :destroy
    has_many :ingredients, through: :doses

    validates :name, uniqueness: true, presence: true

    #  should destroy child doses when destroying self (FAILED - 5)
end
