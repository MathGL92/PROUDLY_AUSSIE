class ProductsController < ApplicationController
  def new
    @product = Product.new
    @producer = Producer.find(params[:producer_id])
  end

  def create
    @product = Product.new(product_params)
    @producer = Producer.find(params[:producer_id]) 
    @product.producer_id = @producer.id
    if @product.save
      redirect_to dashboard_index_path
    else
      render :new
    end
  end  

  private

  def product_params
    params.require(:product).permit(:name, :price, :description, :producer_id, :photo)
  end
end
