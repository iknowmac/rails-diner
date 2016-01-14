class Ingredient < ActiveRecord::Base
  
  # Relate to the Recipe model
  belongs_to :recipe
  
  # Valide that we have a name
  validates :name, presence: true
  
end
