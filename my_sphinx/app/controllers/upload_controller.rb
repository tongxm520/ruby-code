class UploadController < ApplicationController
  def create_client
    if request.post?
      logger.info params.inspect
    end
    render :layout => false
  end
  
  def upload
    require 'uuidtools'
    require 'md5'
    require 'fileutils'
    require "RMagick"
    
    _key = MD5.hexdigest(UUIDTools::UUID.random_create.to_s.upcase)
    @file_name = [Time.now.strftime("%Y%m%d%H%M%S"), _key, '.png'].join('')
    @file_path = "#{RAILS_ROOT}/public/tmp/"

    FileUtils.mkdir_p(@file_path)

    img = Magick::Image.from_blob(params[:file].read)[0]
    img.write(@file_path + @file_name)
  end
end