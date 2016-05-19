class Post < ActiveRecord::Base

	scope :recent_posts, ->(current_user) { where(current_user.friends)}
  belongs_to :user
end
