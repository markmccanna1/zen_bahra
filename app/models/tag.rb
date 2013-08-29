class Tag < ActiveRecord::Base
  # attr_accessible :title, :body
  validates :name, presence: true
  validates :description, presence: true
  attr_accessible :name, :description
end
