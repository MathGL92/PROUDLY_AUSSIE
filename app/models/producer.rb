class Producer < ApplicationRecord
  belongs_to :user
  has_many :products, dependant: :destroy
  validates :name, :address, :ABN, :company_name, presence: true
  validates :ABN, uniqueness: true
end
