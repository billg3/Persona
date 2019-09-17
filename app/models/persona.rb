class Persona < ApplicationRecord

    scope :pop, -> { where("stars > 3" ) }

  # scope :created_and_commented, -> { created.where("comment > 0") }
  
 scope :pop_and_c, -> { pop.where.not(comment: nil )}



    belongs_to :user
    belongs_to :collective

    # validates :connection,  inclusion: { in: %w(mind body spirit),
    #     message: "%{value} is not a valid connection" }
        
        validates :stars, presence: true

#validate the numericality

        
end

