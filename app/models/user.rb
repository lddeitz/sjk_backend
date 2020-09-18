class User < ApplicationRecord
  has_many :songs
  has_many :comments
  has_many :user_relationships
  has_many :friends, through :user_relationship

  has_and_belongs_to_many :friendships,
      class_name: "User", 
      join_table:  :friendships, 
      foreign_key: :user_id, 
      association_foreign_key: :friend_user_id
end
