class Tagging < ApplicationRecord
  belongs_to :products
  belongs_to :tags
end
