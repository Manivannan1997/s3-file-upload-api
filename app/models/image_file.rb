class ImageFile < ApplicationRecord
  has_one_attached :image, dependent: :destroy
  validates :image, presence: true
end
