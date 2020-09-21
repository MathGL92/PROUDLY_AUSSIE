class Tagging < ApplicationRecord
  belongs_to :product
  belongs_to :tag
  validates :tag, uniqueness: { scope: :product, message: 'already added' }
end
