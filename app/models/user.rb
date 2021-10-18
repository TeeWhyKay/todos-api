class User < ApplicationRecord
  # encrypt password how?
  has_secure_password

  # Model associations
  has_many :todos, foreign_key: :created_by
  validates :name, :email, :password_digest, presence: true
end
