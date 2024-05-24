class OrdersController < ApplicationController
  before_action :authenticate_user!

  def index
    @orders = Order.all
    respond_to do |format|
      format.html
      format.pdf do
        # render pdf: "teste_pdf_name", template: "orders/index", formats: [:html]
        render pdf: "teste_pdf_name", template: "orders/_orders_table", locals: { orders: @orders }, formats: [:html], content_type: 'application/pdf', disposition: :inline, layout: 'pdf'
      end
    end
  end

  def show
    @order = Order.find(params[:id])
    @cart_items = @order.cart_items
  end

  def place_order
    @order = current_user.orders.build(order_params)

    if @order.save
      # Associate the cart items with the order
      current_user.cart_items.update_all(order_id: @order.id)
      OrderMailer.order_confirmation(@order).deliver_now


      redirect_to @order, notice: 'Order placed successfully.'
    else
      redirect_to cart_items_path, alert: 'Failed to place order.'
    end
  end

  private

  def order_params
    params.require(:order).permit(:user_id) # Permit only necessary parameters
  end
end

  
  
  
  
#   private

#   def order_params
#     params.require(:order).permit(:user_id)
#   end
  
# end

# class OrdersController < ApplicationController
#   def create
#     @order = current_user.orders.build(order_params)
#     if @order.save
#       # Associate the cart items with the order
#       current_user.cart_items.update_all(order_id: @order.id)
#       redirect_to order_path(@order), notice: 'Order placed successfully.'
#     else
#       render :new, alert: 'Failed to place order.' # Render the new template with errors
#     end
#   end

#   def show
#     @order = Order.find(params[:id])
#   end

#   private

#   def order_params
#     # Define the order params as per your requirements
#     params.require(:order).permit(:user_id)
#   end
# end

