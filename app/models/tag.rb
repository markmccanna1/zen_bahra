class Tag < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :user

  validates :name, presence: true
  validates :description, presence: true

  attr_accessible :name, :description, :user_id

end
