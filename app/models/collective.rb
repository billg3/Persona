class Collective < ApplicationRecord

    has_many :personas
  has_many :users, through: :personas
end
