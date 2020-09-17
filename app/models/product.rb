class Product < ApplicationRecord
  belongs_to :producer
  has_many :taggings
  has_many :tags, through: :taggings
  has_many :line_items
  validates :name, :price, presence: true
  has_one_attached :photo
  monetize :price_cents
end
