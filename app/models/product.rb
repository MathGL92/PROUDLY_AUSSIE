class Product < ApplicationRecord
  belongs_to :producer
  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings
  has_many :line_items
  validates :name, :price, :photo, presence: true
  has_one_attached :photo
  monetize :price_cents
  accepts_nested_attributes_for :taggings
end
