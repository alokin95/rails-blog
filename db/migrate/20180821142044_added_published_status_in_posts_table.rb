class AddedPublishedStatusInPostsTable < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :status, :integer
  end
end
