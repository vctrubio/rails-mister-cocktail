class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, presence: true
  validates_uniqueness_of :cocktail_id, :scope => [:ingredient_id]

  
end

# cocktail cannot be blank (FAILED - 9)

#   ingredient cannot be blank (FAILED - 10)

#   is unique for a given cocktail/ingredient couple (FAILED - 11)