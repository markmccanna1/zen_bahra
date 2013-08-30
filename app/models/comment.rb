class Comment < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :commentable, polymorphic: true
  belongs_to :user

  validates :body, presence: true
  attr_accessible :body, :user_id, :commentable_id
end
