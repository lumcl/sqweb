class Db < ActiveRecord::Base
  self.table_name = 'dual'
  self.primary_key = 'dummy'

  connection.raw_connection.recv_timeout = 10
  connection.raw_connection.send_timeout = 5

  def self.display_time
    puts "Run at #{Time.now}"
  end

end
