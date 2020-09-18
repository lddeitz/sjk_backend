class Comment < ApplicationRecord
  belongs_to :user optional true
  has_many :comment_tags
  has_many :tags, through :comment_tags
  belongs_to :song
  has_ancestry
end
