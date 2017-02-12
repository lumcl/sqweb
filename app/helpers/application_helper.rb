module ApplicationHelper

  def export_to_excel(table_id)
    #<a download="report.xls" href="#" onclick="return ExcellentExport.excel(this, 'rpt', 'Sheet');">Excel</a>
    link_to 'Excel', '#', download:'report.xls', onclick:"return ExcellentExport.excel(this, '#{table_id}', 'Sheet');"
  end

end
