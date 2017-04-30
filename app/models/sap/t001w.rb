class Sap::T001w < ActiveRecord::Base
  self.primary_key = :werks

  def self.select_list
    Sap::T001w.all.select("werks, werks ||' - '||name2 name2")
  end

end
