class Producer < ApplicationRecord
  belongs_to :user
  has_many :products, dependent: :destroy
  validates :name, :address, :ABN, :company_name, presence: true
  validates :ABN, uniqueness: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
