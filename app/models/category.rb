class Category < ApplicationRecord
  has_many :posts, dependent: :destroy
  validates :name, presence: true, :length => { :within => 1..20 }
end
