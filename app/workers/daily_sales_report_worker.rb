# app/workers/daily_sales_report_worker.rb
class DailySalesReportWorker
  include Sidekiq::Worker

  def perform
    SalesReport.generate_daily_report
  end
end
