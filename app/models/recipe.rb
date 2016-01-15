class Recipe < ActiveRecord::Base
    
    # Mount the uploader class generated with carrierwave.
    mount_uploader :image, ImageUploader
    
    # Relate ingredients and instructions to the Recipe model.
    has_many :ingredients, dependent: :destroy
    has_many :instructions, dependent: :destroy
    
    # Some validation for the title and description.
    validates :title, presence: true, length: { minimum: 5 }
    validates :description, presence: true, length: { minimum: 10 }
end
