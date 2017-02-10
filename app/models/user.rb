class User < ActiveRecord::Base
  self.table_name = :users
  self.primary_key = :uuid

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # devise :ldap_authenticatable, :registerable,
  #        :recoverable, :rememberable, :trackable, :validatable
  devise :ldap_authenticatable, :trackable
end
