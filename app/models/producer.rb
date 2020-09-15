class Producer < ApplicationRecord
  belongs_to :user
  has_many :products, dependent: :destroy
  validates :name, :address, :ABN, :company_name, presence: true
  validates :ABN, uniqueness: true
end
