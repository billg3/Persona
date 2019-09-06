class User < ApplicationRecord
  has_many :personas
  has_many :collectives, through: :personas

  has_secure_password



validates :email, presence: true, uniqueness: true
validates :name, presence: true
validates :password, presence: true



has_secure_password

def self.find_or_create_by_omniauth(auth_hash)
  where(:email => auth_hash["info"]["email"]).first_or_create do  |user|
    user.name = auth_hash["info"]["name"]
    user.password = SecureRandom.hex
  end
end



end 


