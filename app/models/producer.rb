class Producer < ApplicationRecord
  belongs_to :user
  has_many :products, dependent: :destroy
  validates :name, :address, :ABN, :company_name, presence: true
  validates :ABN, uniqueness: true
  has_one_attached :photo
  has_one_attached :bg_photo
end
