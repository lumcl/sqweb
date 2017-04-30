class SelectsController < ApplicationController

  def mat_grp
    options = []
    esc = "'\""
    sql = "
      select matkl,wgbez60
        from sapsr3.t023t
        where mandt='168' and spras='M' and matkl like '#{params[:q].delete(esc)}%'
    "
    mat_grps = Sapdb.find_by_sql(sql)
    mat_grps.each do |row|
      options.append [row.matkl, "#{row.matkl} #{row.wgbez60}"]
    end
    render json: options.to_json
  end

  def user
    users = []
    User.search(params[:q].split(',').last).each do |row|
      # users.append [row.mail.first.upcase, row.mail.first.upcase]
      users.append row.mail.first.split('@').first.upcase
    end
    render :json => users.sort
  end

end
