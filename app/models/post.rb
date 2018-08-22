class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :comments, dependent: :destroy
  validates :title, presence: true, :length => { :within => 5..50 }
  validates :body, presence: true, length: { :within => 15..300 }
end
