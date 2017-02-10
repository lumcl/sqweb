class Avl < ActiveRecord::Base
  self.primary_key = :uuid
  validates_uniqueness_of :werks, scope: [:lifnr, :matkl]
  validates_presence_of :werks, :lifnr

  def self.create_via_excel(rows)
    @avls = []
    rows.each do |row|
      hash = {}
      if row.include?("\t")
        buf = row.split("\t")
        hash[:werks] = buf[0]
        hash[:lifnr] = buf[1]
        hash[:matkl] = buf[2]
        hash[:email] = buf[3]
        hash[:resp] = buf[4]
        @avls.append(hash)
      end
    end
    @avls.each do |avl|
      Avl.create!(avl)
    end
  end

end
