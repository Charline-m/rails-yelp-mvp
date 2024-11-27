class Restaurant < ApplicationRecord
  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: CATEGORY, message: "Tis category doesn't exist !" }
  has_many :reviews, dependent: :destroy
end
