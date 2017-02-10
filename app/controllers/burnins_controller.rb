class BurninsController < ApplicationController
  before_action :set_burnin, only: [:show, :edit, :update, :destroy]

  def menu
  end

  def aufnr_get
  end

  def aufnr_post
    session[:aufnr] = params[:aufnr]
    session[:matnr] = params[:matnr]
    session[:kunnr] = params[:kunnr]
    session[:pwerk] = params[:pwerk]
    session[:psmng] = params[:psmng]
    session[:budat] = params[:budat]
    session[:burnline] = params[:burnline]
    session[:btime] = params[:btime]
    session[:bvolt] = params[:bvolt]
    session[:bload] = params[:bload]
    session[:btemp] = params[:btemp]
    if params[:matnr].blank? or params[:aufnr].blank? or params[:btime].blank? or
        params[:burnline].blank? or params[:bvolt].blank? or params[:bload].blank? or
        params[:btemp].blank?
      render :aufnr_get, notice: '工單/線別/燒機參數等不能為空!'
    else
      redirect_to start_get_burnins_url
    end
  end

  def start_get
    sql = 'select count(*) cnt from burnin where aufnr=?'
    @cnt = Db.find_by_sql([sql, session[:aufnr]]).first.cnt
  end

  def start_ajax
    sql = 'select count(*) cnt from burnin where qrcode=?'
    count = Db.find_by_sql([sql, params[:qrcode]]).first.cnt
    if count == 0
      begin
        Burnin.create!(
            {
                qrcode: params[:qrcode],
                aufnr: session[:aufnr],
                pwerk: session[:pwerk],
                burnline: session[:burnline],
                matnr: session[:matnr],
                kunnr: session[:kunnr],
                budat: session[:budat],
                psmng: session[:psmng],
                btime: session[:btime],
                bvolt: session[:bvolt],
                bload: session[:bload],
                btemp: session[:btemp],
                strtime: Time.now,
                struser: current_user.email
            })
        status = 'OK'
      rescue
        status = 'ERR'
      end
    else
      status = 'DUP'
    end
    sql = 'select count(*) cnt from burnin where aufnr=?'
    cnt = Db.find_by_sql([sql, session[:aufnr]]).first.cnt
    status.eql?('OK') ? css_class = 'success' : css_class = 'danger'

    render js: "
      $('##{params[:rowcounter]}').text('#{status}');
      $('##{params[:rowcounter]}').addClass('#{css_class}');
      $('#scanqty').text('#{cnt} / #{session[:psmng]}');
    "
  end

  def end_get
  end

  def end_ajax
    burnin = Burnin.find_by_qrcode_and_aufnr(params[:qrcode], params[:aufnr])
    if burnin.blank?
      status = 'NRC'
      time = 0
    else
      burnin.endtime = Time.now
      burnin.enduser = current_user.email
      time = (burnin.endtime - burnin.strtime).to_i
      burnin.difftime = time

      if (burnin.btime * 3600) > burnin.difftime
        status = 'NG'
      else
        status = 'OK'
      end
      begin
        Burnin.where(uuid: burnin.uuid).update_all(
            endtime: burnin.endtime,
            enduser: burnin.enduser,
            difftime: burnin.difftime,
            result: status
        )
      rescue
        status = 'ERR'
        time = 0
      end
    end
    status.eql?('OK') ? css_class = 'success' : css_class = 'danger'
    render js: "
      $('#s#{params[:rowcounter]}').text('#{status}');
      $('#t#{params[:rowcounter]}').text('#{Time.at(time).utc.strftime('%H:%M:%S')}');
      $('#s#{params[:rowcounter]}').addClass('#{css_class}');
    "
  end

  def aufnr_ajax
    sql = "
      select a.aufnr,a.matnr,a.pwerk,a.kunnr,a.psmng,
             '' burnline, '' btime, '' bvolt, '' btemp, '' bload
        from burnin a
        where a.aufnr=? and rownum = 1
    "
    list = Db.find_by_sql([sql, params[:aufnr].rjust(12, '0')])

    if list.blank?
      sql = "
        select a.aufnr,a.matnr,a.pwerk,b.kunnr,a.psmng,
               '' burnline, '' btime, '' bvolt, '' btemp, '' bload
          from sapsr3.afpo a
            left join sapsr3.knmt b on b.mandt='168' and b.matnr=a.matnr
          where a.mandt='168' and a.aufnr=?
      "
      list = Sapdb.find_by_sql [sql, params[:aufnr].rjust(12, '0')]
    end

    kunnrs = []
    aufnr = ''
    matnr = ''
    pwerk = ''
    psmng = ''
    focus = ''
    burnline = ''
    btime = ''
    bvolt = ''
    bload = ''
    btemp = ''
    list.each do |row|
      kunnrs.append row.kunnr
      aufnr = row.aufnr
      matnr = row.matnr
      pwerk = row.pwerk
      psmng = row.psmng
    end
    if aufnr.empty?
      focus = "$('#aufnr').focus();"
      sbmbtn = "$('#submit-button').hide();";
    else
      sbmbtn = "$('#submit-button').show();";
    end
    render js: "
                  $('#aufnr').val('#{aufnr}');
                  $('#burnline').val('#{burnline}');
                  $('#btime').val('#{btime}');
                  $('#bvolt').val('#{bvolt}');
                  $('#bload').val('#{bload}');
                  $('#btemp').val('#{btemp}');
                  $('#psmng').val('#{psmng}');
                  $('#matnr').val('#{matnr}');
                  $('#pwerk').val('#{pwerk}');
                  $('#kunnr').val('#{kunnrs.join(',')}');
                  #{focus}
    #{sbmbtn}
    "

  end

  def pack_get
  end

  def pack_ajax
    time = Time.now
    aufnr = ''
    burnin = Burnin.find_by_qrcode_and_aufnr(params[:qrcode], params[:aufnr])
    if burnin.blank?
      status = 'NRC'
    elsif burnin.endtime.blank?
      status = 'WIP'
    elsif burnin.result.eql?('NG')
      status = 'NG'
    else
      begin
        Burnin.where(uuid: burnin.uuid).update_all(
            packline: params[:packline],
            pallet: params[:pallet],
            packtime: time,
            packuser: current_user.email
        )
        status = 'OK'
      rescue
        status = 'ERR'
      end
    end
    status.eql?('OK') ? css_class = 'success' : css_class = 'danger'
    render js: "
      $('#s#{params[:rowcounter]}').text('#{status}');
      $('#t#{params[:rowcounter]}').text('#{time.strftime('%H:%M:%S')} #{aufnr}');
      $('#s#{params[:rowcounter]}').addClass('#{css_class}');
    "
  end

  def summary_ajax
    sql = "
      with
        tstr as (select aufnr,max(psmng) psmng, count(*) cnt, max(matnr) matnr from burnin where aufnr=? group by aufnr),
        tend as (select aufnr,count(*) cnt from burnin where aufnr=? and endtime is not null group by aufnr),
        tpak as (select aufnr,count(*) cnt from burnin where aufnr=? and packtime is not null group by aufnr)
      select nvl(a.psmng,0) psmng, nvl(a.cnt,0) strcnt, nvl(b.cnt,0) endcnt, nvl(c.cnt,0) packcnt, a.matnr
        from tstr a
          left join tend b on b.aufnr=a.aufnr
          left join tpak c on c.aufnr=a.aufnr
    "
    psmng = 0
    strcnt = 0
    endcnt = 0
    packcnt = 0
    matnr = ''
    Burnin.find_by_sql([sql,params[:aufnr],params[:aufnr],params[:aufnr]]).each do |row|
      psmng = row.psmng
      strcnt = row.strcnt
      endcnt = row.endcnt
      packcnt = row.packcnt
      matnr = row.matnr
    end
    render js: "
      $('#matnr').text('#{matnr}');
      $('#scanqty').text('#{psmng.to_i} / #{strcnt.to_i} / #{endcnt.to_i} / #{packcnt.to_i}');
    "
  end

  # GET /burnins
  def index
    @burnins = []
    if params[:sbm].blank?
      render :index
    else
      if params[:aufnr].present? or params[:matnr].present? or
          params[:kunnr].present? or params[:qrcode_str].present?
        @burnins = Burnin
                       .where("aufnr like '%#{params[:aufnr]}%'")
                       .where("matnr like '%#{params[:matnr]}%'")
                       .where("kunnr like '%#{params[:kunnr]}%'")
                       #.where("qrcode between '#{params[:qrcode_str]}' and '#{params[:qrocde_end] || params[:qrcode_str]}'")
                       #.order(:qrcode)
        puts @burnins
        render :index
      end
    end
  end

  # GET /burnins/1
  def show
  end

  # GET /burnins/new
  def new
    @burnin = Burnin.new
  end

  # GET /burnins/1/edit
  def edit
  end

  # POST /burnins
  def create
    @burnin = Burnin.new(burnin_params)

    if @burnin.save
      redirect_to @burnin, notice: 'Burnin was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /burnins/1
  def update
    if @burnin.update(burnin_params)
      redirect_to @burnin, notice: 'Burnin was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /burnins/1
  def destroy
    @burnin.destroy
    redirect_to burnins_url, notice: 'Burnin was successfully destroyed.'
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_burnin
    @burnin = Burnin.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def burnin_params
    params.require(:burnin).permit(:uuid, :qrcode, :aufnr, :burnline, :matnr, :kunnr, :budat, :psmng, :btime, :bvolt, :bload, :btemp, :strtime, :endtime, :struser, :enduser, :difftime, :result, :packline, :packtime, :packuser)
  end
end
