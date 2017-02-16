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

end
