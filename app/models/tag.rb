class Tag < ApplicationRecord
    has_many :taggings
    validates :name, presence: true
    validates :name, uniqueness: true
end
