class Persona < ApplicationRecord


 
    belongs_to :user
    belongs_to :collective
    validates :connection,  inclusion: { in: %w(mind body spirit),
        message: "%{value} is not a valid connection" }
end

