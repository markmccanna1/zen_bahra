class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :voteable, polymorphic: true
  validates_presence_of :user_id, :voteable_type, :voteable_id

  attr_accessible :points, :voteable_id

  def self.find_or_create(attributes)
    PostVote.where(attributes).first || PostVote.create(attributes)
  end

end
