class Category < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_one_attached :image, dependent: :destroy
  validates :name, presence: true, :length => { :within => 1..20 }
end
