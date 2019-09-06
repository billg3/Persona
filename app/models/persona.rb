class Persona < ApplicationRecord

    scope :created,               -> { where(created: true) }
  scope :created_and_commented, -> { created.where("comments_count > 0") }


 
    belongs_to :user
    belongs_to :collective
    validates :connection,  inclusion: { in: %w(mind body spirit),
        message: "%{value} is not a valid connection" }
        
        validates :stars, presence: true


        
end

