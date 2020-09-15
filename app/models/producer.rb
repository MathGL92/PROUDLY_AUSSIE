class Producer < ApplicationRecord
  belongs_to :user
  has_many :products, dependent: :destroy
  has_one_attached :photo
  validates :name, :address, :ABN, :company_name, presence: true
  validates :ABN, uniqueness: true

  has_one_attached :photo
  has_one_attached :bg_photo

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
