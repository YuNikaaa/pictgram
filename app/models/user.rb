class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
has_secure_password
  validates :password, length: { minimum: 8,maximum: 32 }
VALID_PASSWORD_REGEX = /\A[a-zA-Z0-9]+\z/
　validates :password, format: { with: VALID_PASSWORD_REGEX }
VALID_EMAIL_REGEX = /\A\S+@\S+\.\S+\z/
  validates :email, format: { with: VALID_PASSWORD_EMAIL }
　validates :name, length: { minimum: 1, maximum: 15 }
end