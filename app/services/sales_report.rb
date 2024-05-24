# app/services/sales_report.rb
class SalesReport
  def self.generate_daily_report
    sales = Order.where(created_at: Date.yesterday.all_day)
    p = Axlsx::Package.new
    p.workbook.add_worksheet(name: "Daily Sales") do |sheet|
      sheet.add_row ["Order ID", "Customer", "Total", "Created At"]
      sales.each do |order|
        sheet.add_row [order.id, order.customer.name, order.total, order.created_at]
      end
    end

    file_path = Rails.root.join("public", "reports", "daily_sales_#{Date.yesterday}.xlsx")
    FileUtils.mkdir_p(File.dirname(file_path))
    p.serialize(file_path.to_s)
  end
end
