module ApplicationHelper

  def export_to_excel(table_id)
    #<a download="report.xls" href="#" onclick="return ExcellentExport.excel(this, 'rpt', 'Sheet');">Excel</a>
    link_to 'Excel', '#', download:'report.xls', onclick:"return ExcellentExport.excel(this, '#{table_id}', 'Sheet');"
  end

  def prev_page
    link_to t('prev_page'), 'javascript:window.history.back();'
  end

  def date_format(obj)
    obj.nil? ? '' : obj.strftime('%Y-%m-%d %H:%M')
  end
end
