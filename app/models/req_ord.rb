class ReqOrd < ActiveRecord::Base
  alias_attribute :matgrp_id, :matkl
  serialize :werkss, Array

  self.primary_key = :uuid



end
