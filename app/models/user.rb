class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation
  
  validates :name, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true
  has_secure_password
  has_many :questions

  has_many :questions

end
