class User < ApplicationRecord
  validates :username, length: {minimum: 3},
            uniqueness: {case_sensitive: false}
  has_secure_password
  validates :password, presence: true,length: {minimum: 6}
  has_many :blogs
end
