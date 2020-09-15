class Producer < ApplicationRecord
  belongs_to :user
  has_many :products, dependent: :destroy
  has_one_attached :photo
  validates :name, :address, :ABN, :company_name, presence: true
  validates :ABN, uniqueness: true
end
