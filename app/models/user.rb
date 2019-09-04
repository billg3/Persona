class User < ApplicationRecord
  has_many :personas
  has_many :collectives, through: :personas

  has_secure_password



validates :email, presence: true, uniqueness: true
validates :name, presence: true
validates :password, presence: true
end
