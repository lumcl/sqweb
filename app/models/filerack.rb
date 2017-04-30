class Filerack < ActiveRecord::Base
  self.primary_key = :uuid
  mount_uploader :document, FileUploader

  def download_url
    #"#{document.file.qcloud_info['source_url']}?sign=#{sign_more}" if not document.nil? and not document.file.nil?
    "#{QcloudCos.stat(document.path)['data']['source_url']}?sign=#{sign_more}" if not document.nil?
  end

  def sign_more
    QcloudCos::Authorization.new(QcloudCos.config).sign_more(QcloudCos.config.bucket, 60 * 3)
  end

  ##{f.download_url}?sign=#{Filerack.sign_more}
  #sign_once(bucket, fileid) ⇒ Object

end
