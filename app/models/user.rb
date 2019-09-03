class User < ApplicationRecord


  has_secure_password

  has_many :personas
  has_many :collectives, through: :personas

validates :email, presence: true, uniqueness: true
validates :name, presence: true
validates :password, presence: true
end
