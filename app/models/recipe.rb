class Recipe < ActiveRecord::Base
    mount_uploader :image, ImageUploader
    
    has_many :ingredients, dependent: :destroy
    has_many :instructions, dependent: :destroy
    
    validates :title, presence: true, length: { minimum: 5 }
    validates :description, presence: true, length: { minimum: 5 }
end
