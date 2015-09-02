class ProductsController < ApplicationController
  def new
    @product = Product.new
  end

  def create

    params[:product][:price] = params[:product][:price].gsub(",", "")
    product_params = params.require(:product).permit([:title, :price, :description])

    @product = Product.new(product_params)
    if @product.save
      # This will bring you to the show page where you will see your last entry
      redirect_to product_path(@product)
    else
      render :new
    end
  end

  def index
    @products = Product.all
  end

  def show
    @product = Product.find params[:id]
    @comment = Comment.new
  end

  def edit
    @product = Product.find params[:id]
  end

  def update
    params[:product][:price] = params[:product][:price].gsub(",", "")
    product_params = params.require(:product).permit([:title, :price, :description])

    @product = Product.find params[:id]
    if @product.update product_params
      redirect_to product_path(@product)
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find params[:id]
    @product.destroy
    redirect_to products_path
  end
end
