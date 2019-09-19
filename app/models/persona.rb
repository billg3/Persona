class Persona < ApplicationRecord

    scope :pop, -> { where("stars > 3" ) }


 scope :pop_and_c, -> { pop.where.not(comment: nil )}



    belongs_to :user
    belongs_to :collective

   
        validates :stars, presence: true

         # validates :connection,  inclusion: { in: %w(mind body spirit),
    #     message: "%{value} is not a valid connection" }
#validate the numericality

        
end

