class Dose < ActiveRecord::Base
  validates :description
  validates :cocktail, :ingredient, uniqueness: true
  belongs_to :cocktail
  belongs_to :ingredient
end
