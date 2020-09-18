class Producer < ApplicationRecord
  belongs_to :user
  has_many :products, dependent: :destroy
  has_many :tags, -> { distinct }, through: :products
  has_one_attached :photo
  validates :name, :address, :tagline, :ABN, :company_name, presence: true
  # validates :ABN, uniqueness: true

  has_one_attached :photo
  has_one_attached :bg_photo

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def self.with_tag(tag_name)
    Producer.joins(:tags).where(tags:{name: tag_name }).distinct
  end

end
