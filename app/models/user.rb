class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :producer, dependent: :destroy
  has_one :shopping_cart
  has_many :orders

  after_create :create_shopping_cart
  def create_shopping_cart
    shopping_cart = ShoppingCart.new
    shopping_cart.user = self

    shopping_cart.save
  end

end
