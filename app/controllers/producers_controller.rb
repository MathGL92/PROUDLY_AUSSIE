class ProducersController < ApplicationController
  before_action :set_producer, only: [:show]
  skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    @producers = Producer.all
  end

  def show
  end

  private

  def set_producer
    @producer = Producer.find(params[:id])
  end

  def producer_params
    params.require(:producer).permit(:name, :ABN, :address, :company_name, :photo)
  end
end
