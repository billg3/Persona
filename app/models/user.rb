class User < ApplicationRecord
  has_many :personas
  has_many :collectives, through: :personas

  scope :most, -> {joins(:personas).group(:user_id).order("count(user_id) DESC").first}

# psuedocode - join to the table, group object by their id, order by whose count of user_id's is the highest, and select the first 


  has_secure_password


validates :email, presence: true, uniqueness: true
validates :name, presence: true
validates :password, presence: true



has_secure_password


#omniauth



def self.find_or_create_by_omniauth(auth_hash)
  where(:email => auth_hash["info"]["email"]).first_or_create do  |user|
    user.name = auth_hash["info"]["name"]
    user.password = SecureRandom.hex
  end
end



end 


