class ProductsController < ApplicationController
  def new
    @product = Product.new
    @producer = Producer.find(current_user.producer.id)
  end

  def create
    @product = Product.new(product_params)
    @product.producer_id = current_user.producer.id
    if @product.save
      redirect_to dashboard_index_path
    else
      render :new
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :description, :producer_id)
  end
end
