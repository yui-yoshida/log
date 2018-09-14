class ImageUploader < CarrierWave::Uploader::Base
  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  # リサイズしたり画像形式を変更するのに必要
 include CarrierWave::MiniMagick

# 画像の上限を200pxにする


  # process resize_to_fit: [100, 100]
  process resize_to_limit: [50,50]
  process resize_to_fill: [50, 50, "Center"]

  version :thumb do
    process resize_to_limit: [50,50]
  end

 # 保存形式をJPGにする
 process :convert => 'jpg'


  end

 # jpg,jpeg,gif,pngしか受け付けない
 def extension_white_list
   %w(jpg jpeg gif png)
 end

# 拡張子が同じでないとGIFをJPGとかにコンバートできないので、ファイル名を変更
 def filename
   super.chomp(File.extname(super)) + '.jpg' if original_filename.present?
 end



  # include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:

  # storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
