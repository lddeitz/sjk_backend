class Tag < ApplicationRecord
  has_many :comment_tags
  has_many :comments, though :comment_tags
end
