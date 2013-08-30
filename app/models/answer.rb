class Answer < ActiveRecord::Base
  attr_accessible :body

  belongs_to :question
  belongs_to :user
  has_many :comments, :as => :commentable

  validates :body, presence: true
end
