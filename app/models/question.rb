class Question < ActiveRecord::Base
  attr_accessible :title, :body, :user_id

  has_many :topics
  has_many :tags, through: :topics
  has_many :answers
  has_many :comments
  belongs_to :user
end
