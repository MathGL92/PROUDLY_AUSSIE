class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :producer, dependent: :destroy
  has_one :shopping_cart
<<<<<<< HEAD

=======
>>>>>>> b74b68e7f845fc3133a03c988e201ca0281ed9af
end

