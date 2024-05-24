class ProductsController < ApplicationController
  before_action :authenticate_user!
  
  # GET /products or /products.json
  def index
    @products = Product.paginate(page: params[:page], per_page: 3)
    authorize! :read, Product
  end

  # GET /products/1 or /products/1.json
  def show
    @product = Product.find(params[:id])
    authorize! :read, @product
  end

  # GET /products/new
  def new
    @product = Product.new
    authorize! :create, @product
  end

  # GET /products/1/edit
  def edit
    @product = Product.find(params[:id])
    authorize! :update, @product
  end

  # POST /products or /products.json
  def create
    @product = Product.new(product_params)
    authorize! :create, @product

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: "Product was successfully created." }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1 or /products/1.json
  def update
    @product = Product.find(params[:id])
    authorize! :update, @product

    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: "Product was successfully updated." }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1 or /products/1.json
  def destroy
    @product = Product.find(params[:id])
    authorize! :destroy, @product

    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: "Product was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def product_params
    params.require(:product).permit(:product_category_id, :name, :description, :price,:image)
  end
end
