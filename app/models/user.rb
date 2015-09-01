class User < ActiveRecord::Base
  attr_accessible :email, :name
  has_many :microposts
  validates :name, :email, presence:true
  validates :name, length:{maximum:50}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, format:{with:VALID_EMAIL_REGEX}
  validates :email, uniqueness:{case_sensitive:false}
  # has_secure_password
end
