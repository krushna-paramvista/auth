class CartItemsController < ApplicationController
  
  def create
    @product = Product.find(params[:product_id])
    @order = current_order
    @cart_item = @order.cart_items.build(product: @product, user: current_user)
    
    if @cart_item.save 
      redirect_to cart_items_path, notice: 'Item added to cart'
    else
      render json: { status: 'error', message: 'Failed to add item to cart' }
    end
  end 

  def index
    @order = current_order
    @cart_items = @order.cart_items
    @total_amount = @cart_items.sum { |cart_item| cart_item.product.price }
  end

  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy
    redirect_to cart_items_path, notice: "Item removed from cart"
  end

  private 

  def current_order
    @current_order ||= current_user.orders.first_or_create
  end
end
