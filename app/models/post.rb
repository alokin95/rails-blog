class Post < ApplicationRecord
  has_one_attached :image, dependent: :destroy
  belongs_to :user
  belongs_to :category
  has_many :comments, dependent: :destroy
  validates :title, presence: true, :length => { :within => 5..50 }
  validates :body, presence: true, length: { :within => 15..300 }

  def comment_count 
    "Number of comments: " + "#{self.comments.count}"
  end

  # def image_nil
  #   if !params[:image]
  #     self.image.attach(io: File.open(Rails.root.join('app', 'assets', 'images', 'default-post.png')), filename: 'default-post.png', content_type: 'image/png')
  #   end
  # end


end
