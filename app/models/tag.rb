class Tag < ActiveRecord::Base
  attr_accessible :name, :description

  validates :name, presence: true
  # validates :description, presence: true
  
  has_many :topics
  has_many :questions, through: :topics
  has_many :devotees
  has_many :followers, through: :devotees, source: :user
end
