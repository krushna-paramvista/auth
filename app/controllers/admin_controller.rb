class AdminController < ApplicationController
  before_action :authenticate_user!
  before_action :check_admin

  def orders
    @orders = Order.all
  end

  # def download_orders
  #   @orders = Order.all

  #   respond_to do |format|
  #     format.html { render :orders }  # Render orders view for non-PDF requests
  #     format.pdf { render html: render_to_string(template: 'orders/orders_table.html.erb', layout: 'pdf') } # Render existing HTML template as PDF
  #   end
  # end


  private

  def check_admin
    unless current_user.role == 'admin'
      redirect_to root_path, alert: 'You are not authorized to access this page.'
    end
  end
end
