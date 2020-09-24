class User < ApplicationRecord
  has_many :songs
  has_many :comments
  has_many :user_relationships
  has_many :friends, through: :user_relationship

  has_and_belongs_to_many :friendships,
      class_name: "User", 
      join_table:  :friendships, 
      foreign_key: :user_id, 
      association_foreign_key: :friend_user_id

  #from stackoverflow
  has_many :user_friendships
  has_many :friends, -> { where(user_friendships: { state: "accepted"}) }, through: :user_friendships
  has_many :pending_user_friendships, -> { where(state: "pending") }, class_name: 'UserFriendship', foreign_key: :user_id                                  
  has_many :pending_friends, through: :pending_user_friendships, source: :friend
end
