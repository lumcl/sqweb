class ReqOrdSup < ActiveRecord::Base
  self.primary_key = :uuid

  belongs_to :req_ord
end
