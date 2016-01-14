class Instruction < ActiveRecord::Base
  
  # Relate to the Recipe model
  belongs_to :recipe
  
  # Valide that we have a description
  validates :description, presence: true
  
end
