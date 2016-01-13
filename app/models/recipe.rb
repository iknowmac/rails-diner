class Recipe < ActiveRecord::Base
    has_many :ingredients, dependent: :destroy
    has_many :instructions, dependent: :destroy
    validates :title, presence: true, length: { minimum: 5 }
end
