class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :recipe
  validates :stars, presence: true, inclusion: { in: [0, 1, 2, 3, 4, 5] }
end
