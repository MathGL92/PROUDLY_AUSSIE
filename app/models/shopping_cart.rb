class ShoppingCart < ApplicationRecord
  belongs_to :user, optional: true
  has_many :line_items
  has_many :products, through: :line_items
  has_many :producers, through: :products

  def list_producers
    producers.uniq.map { |producer| producer.name }
  end
end
