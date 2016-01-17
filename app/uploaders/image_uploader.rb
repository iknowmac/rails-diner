# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base
    include CarrierWave::RMagick

    storage :file

    def store_dir
        "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
    end

    version :large do
        process :resize_to_fill => [800, 450]
    end
  
    version :thumb do
        process :resize_to_fill => [100, 56]
    end

end
