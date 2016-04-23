class Friendship < ActiveRecord::Base
  belongs_to :user
  belongs_to :friend, class_name: 'User'

	validates :user, presence: true
	validates :friend, presence: true, uniqueness: { scope: :user }
  validate :not_self

  after_create :create_inverse_relationship
  after_destroy :destroy_inverse_relationship

  private

  def create_inverse_relationship
    friend.friendships.create(friend: user)
  end

  def destroy_inverse_relationship
    friendship = friend.friendships.find_by(friend: user)
    friendship.destroy if friendship
  end

  def not_self
    errors.add(:friend, "can't be equal to user") if user == friend
  end
end
