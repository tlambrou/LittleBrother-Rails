class User < ApplicationRecord
  VALID_EMAIL_REGEX = /[^@]+@[^@]+/
  has_secure_password
  validates :username, uniqueness: true, presence: true, length: { minimum: 4, maximum: 30 }
  validates :email, format: { with: VALID_EMAIL_REGEX, message: "Email address was invalid" }
  validates :email, uniqueness: true
end
