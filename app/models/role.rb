class Role < ApplicationRecord
  has_many :users, dependent: :destroy
  validates :name, presence: true, length: { :within => 3..15 }
end
