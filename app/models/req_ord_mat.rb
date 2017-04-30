class ReqOrdMat < ActiveRecord::Base
  self.primary_key = :uuid
  belongs_to :req_ord
  validates_uniqueness_of :matnr, scope: :req_ord_id
  validates_presence_of :maktx
end
