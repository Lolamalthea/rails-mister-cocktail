class Cocktail < ActiveRecord::Base
  validates :name, uniqueness: true
  has_many :doses
  has_many :ingredients, through: :doses
end
