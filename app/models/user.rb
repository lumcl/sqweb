class User < ActiveRecord::Base
  self.table_name = :users
  self.primary_key = :uuid

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # devise :ldap_authenticatable, :registerable,
  #        :recoverable, :rememberable, :trackable, :validatable
  devise :ldap_authenticatable, :trackable

  def self.search(mail)
    ldap = Net::LDAP.new :host => '172.28.1.253', # your LDAP host name or IP goes here,
                         :port => '389', # your LDAP host port goes here,
                         :base => 'O=leader' # the base of your AD tree goes here
    ldap.bind

    ldap.search :filter => Net::LDAP::Filter.eq('mail', "*#{mail.downcase}*"),
                :attributes => ['mail']
  end

  def self.validate_mail_ids(array)
    ldap = Net::LDAP.new :host => '172.28.1.253', # your LDAP host name or IP goes here,
                         :port => '389', # your LDAP host port goes here,
                         :base => 'O=leader' # the base of your AD tree goes here
    ldap.bind
    hash = {}
    array.each do |mail|
      if  mail.include?('/') or mail.include?(' ')
        result = nil
      else
        if mail.include?('@l-e-i.com')
          email = mail.downcase
        else
          email = "#{mail.downcase}@l-e-i.com"
        end
        result = ldap.search :filter => Net::LDAP::Filter.eq('mail', email),
                             :attributes => ['mail']
      end
      if result.present?
        hash[mail] = 'OK'
      else
        hash[mail] = 'NG'
      end
    end
    return hash
  end

end
