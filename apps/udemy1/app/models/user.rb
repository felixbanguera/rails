class User < ApplicationRecord
  has_secure_password

  has_many :profiles

  validates_presence_of :name, :username, :email, :password
end
