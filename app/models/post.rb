class Post < ActiveRecord::Base

	#scope :recent_posts, -> { where(current_user.friends) }
  belongs_to :user
end
