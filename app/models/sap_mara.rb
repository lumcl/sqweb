class SapMara < ActiveRecord::Base
  establish_connection :sapdb
  #connection.raw_connection.recv_timeout = 100
  connection.raw_connection.send_timeout = 50

  self.table_name = 'sapsr3.mara'
  self.primary_key = 'matnr'

end