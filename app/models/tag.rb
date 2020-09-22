class Tag < ApplicationRecord
    has_many :taggings, dependent: :destroy
    has_many :products, through: :taggings
    validates :name, presence: true
    validates :name, uniqueness: true
    has_one_attached :photo
end
