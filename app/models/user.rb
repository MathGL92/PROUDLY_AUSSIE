class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :producer, dependent: :destroy
  has_one :shopping_cart

  after_create :send_approved_email

  private

  def send_approved_email
    UserMailer.welcome(self).deliver_now
  end
  
end

