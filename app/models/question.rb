class Question < ActiveRecord::Base
  attr_accessible :title, :body, :user_id
  # attr_writer :tag

  has_many :topics
  has_many :tags, through: :topics
  has_many :answers
  has_many :comments, :as => :commentable
  belongs_to :user

  


  # after_save :assign_tags


  # def tag_names
  #   @tag_names || tags.map()
  # end


  # private 

  # def assign_tags
  #   if @tag_names
  #     self.tags = @tag_names.split(/\s+/).map do |name|
  #       Tag.fin
end
