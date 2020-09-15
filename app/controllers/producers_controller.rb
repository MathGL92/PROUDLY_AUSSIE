class ProducersController < ApplicationController
    before_action :set_producers, only: [:show]
    skip_before_action :authenticate_user!, only: [:show, :index]

    def index
        @producers = Producer.all
    end

    def show
    end

    private

    def set_producers
        @producer = Producer.find(params[:id])
    end
end
