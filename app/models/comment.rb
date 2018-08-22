class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates :title, presence: true, :length => { :within => 5..50 }
  validates :body, presence: true, length: { :within => 5..100 }
end
