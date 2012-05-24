class User < ActiveRecord::Base
  attr_accessible :email, :username, :password_confirmation, :password
  has_secure_password
  validates_presence_of :email, :username
  validates_uniqueness_of :email, :username
end
