class ImageUploader < CarrierWave::Uploader::Base

 include CarrierWave::MiniMagick

 storage :file
  process resize_to_limit: [400,400]

  # version :thumb do
  #   process resize_to_limit: [50,50]
  # end

 def extension_white_list
   %w(jpg jpeg gif png)
 end

 def filename
   super.chomp(File.extname(super)) + '.jpg' if original_filename.present?
 end

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
end
