require "RMagick"
require 'fileutils'

class Attachment < ActiveRecord::Base
  RootPath = "#{RAILS_ROOT}/public/uploads"

  def set_uploaded_file(source)
    FileUtils.mkdir_p(RootPath)

    if source[:imgFile].original_filename.split(".")[-1] =~ /jpg|jpeg|png|gif|bmp/
      filename = Attachment.uuid_name
      self.size = source[:imgFile].size
      self.content_type = source[:imgFile].original_filename.split(".")[-1]
      basename=File.basename(source[:imgFile].original_filename,".*")

      self.thumbnail = "/uploads/#{basename}_small_#{filename}"
      self.large_filename = "/uploads/#{basename}_large_#{filename}"
      self.filename = "#{RootPath}/#{basename}_#{filename}"
      
      img = Magick::Image.from_blob(source[:imgFile].read)[0]
      img.write(self.filename)
      self.filename = "/uploads/#{basename}_#{filename}"
    end
    self
  end
  
  def self.uuid_name
    require 'uuidtools'
    require 'md5'
    _key = MD5.hexdigest(UUIDTools::UUID.random_create.to_s)
    [Time.now.strftime("%Y%m%d%H%M%S"), _key, '.png'].join('')
  end
end
