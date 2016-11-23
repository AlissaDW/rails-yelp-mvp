class Review < ApplicationRecord
  validates :content, presence: true, allow_blank: false
  validates :rating, presence: true, allow_blank: false

  belongs_to :restaurant

  validates :rating, numericality: { only_integer: true }, inclusion: { in: [0,1,2,3,4,5], allow_nil: false }
end
