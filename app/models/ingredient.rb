class Ingredient < ActiveRecord::Base
  validates :name, uniqueness: true, presence: true
  has_many :doses
  before_destroy :destroy_safe

  private

  def destroy_safe
    if self.doses
      false
    else
      true
    end
  end
end

