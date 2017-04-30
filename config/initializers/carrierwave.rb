CarrierWave.configure do |config|
  config.storage = :qcloud # set default storage
  config.qcloud_app_id = '1253408383'
  config.qcloud_secret_id = 'AKIDoMn25xdIbnqiXCt4DRZgeR6aEm8KD9lB'
  config.qcloud_secret_key = 'LvNhqmaDew4qVzGLEzbEj1702LYaRvEL'
  config.qcloud_bucket = 'sqweb'
end

QcloudCos.configure do |config|
  config.app_id = '1253408383'
  config.secret_id = 'AKIDoMn25xdIbnqiXCt4DRZgeR6aEm8KD9lB'
  config.secret_key = 'LvNhqmaDew4qVzGLEzbEj1702LYaRvEL'
  config.endpoint = 'http://gz.file.myqcloud.com/files/v2/'
  config.bucket = 'sqweb'
end

require 'carrierwave'
require 'qcloud_cos' # use qcloud cos SDK
module CarrierWave
  module Storage
    class Qcloud < Abstract
      def self.configure_qcloud_sdk(uploader)
        # QcloudCos.configure do |config|
        #   config.app_id = uploader.qcloud_app_id
        #   config.secret_id = uploader.qcloud_secret_id
        #   config.secret_key = uploader.qcloud_secret_key
        #   config.bucket = uploader.qcloud_bucket
        #   config.endpoint = 'http://gz.file.myqcloud.com/files/v2/'
        # end
      end
    end
  end
end

require 'qcloud_cos/model/objectable'

module QcloudCos
  class FileObject
    include Objectable
    attr_accessor :access_url
    attr_accessor :source_url
    attr_accessor :biz_attr
    attr_accessor :ctime
    attr_accessor :filelen
    attr_accessor :filesize
    attr_accessor :mtime
    attr_accessor :name
    attr_accessor :sha
    attr_accessor :authority
  end
end
