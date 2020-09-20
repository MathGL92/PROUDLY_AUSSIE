class TaggingsController < ApplicationController
  def new 
    @product = Product.find(params[:product_id])
    @tagging = Tagging.new
    @producer = Producer.find(params[:producer_id])
  end

  def create
    @product = Product.find(params[:product_id])
    @tags = Tag.where(id: params[:tagging][:tag_id])
    @tags.each do |tag|
      @tagging = Tagging.new(product: @product, tag: tag)
      @tagging.save
    end
    redirect_to "/dashboard"
  end
end
