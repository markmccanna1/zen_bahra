class Answer < ActiveRecord::Base
  attr_accessible :body

  belongs_to :question
  belongs_to :user
  
end
