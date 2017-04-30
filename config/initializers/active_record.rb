class ActiveRecord::Base
  self.primary_key = :uuid
  #connection.raw_connection.recv_timeout = 10
  #connection.raw_connection.send_timeout = 5

  before_create :assign_uuid

  def assign_uuid
    if attributes.include?('uuid')
      self.uuid = UUID.new.generate(:compact) if uuid.blank?
    end
  end

  def creator_and_time
    ws_creator = attributes.include?('creator') ? creator : ''
    ws_created_at = attributes.include?('created_at') and created_at.present? ? created_at.strftime('%Y%m%d %H:%M') : ''
    "#{ws_created_at} #{ws_creator}"
  end

  def updater_and_time
    ws_updater = attributes.include?('updater') ? updater : ''
    ws_updated_at = attributes.include?('updated_at') and updated_at.present? ? updated_at.strftime('%Y%m%d %H:%M') : ''
    "#{ws_updated_at} #{ws_updater}"
  end

  def self.connection_test
    begin
      self.find_by_sql ('select sysdate from dual')
    rescue
      begin
        self.connection.reconnect!
      rescue Exception => exception
        Mail.defaults do
          delivery_method :smtp, address: '172.91.1.253', port: 25
        end
        Mail.deliver do
          from 'lum.cl@l-e-i.com'
          to 'lum.cl@l-e-i.com'
          subject 'IPQCWEB OCI ERROR'
          body exception.inspect
        end
      end
    end
  end

end