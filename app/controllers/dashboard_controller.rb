class DashboardController < ApplicationController
  def index
    @user = current_user
    @producer = Producer.find(@user.producer.id)
  end
end
