class AvatarUploader < CarrierWave::Uploader::Base

  include Cloudinary::CarrierWave

 version :display do
   process :eager => true
   process :resize_to_fill => [200, 200, :north]
 end

 version :thumbnail do
   process :eager => true
   process :resize_to_fit => [50, 50]
 end
  # Choose what kind of storage to use for this uploader:
  # storage :file
  # storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  # def store_dir
  #   "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  # end

end
