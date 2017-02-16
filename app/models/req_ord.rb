class ReqOrd < ActiveRecord::Base
  attr_accessor :matgrp_id
  attr_accessor :matgrp

  self.primary_key = :uuid

  before_create :map_matgrp_id_to_matkl

  def map_matgrp_id_to_matkl
    self.matkl = matgrp_id if matgrp.present?
  end

end
