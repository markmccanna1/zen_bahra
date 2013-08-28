class Question < ActiveRecord::Base
  attr_accessible :title, :body

  has_many :tags
  has_many :answers
  has_many :comments
end
