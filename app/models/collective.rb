class Collective < ApplicationRecord

    has_many :personas
  has_many :users, through: :personas

#various methods googled


  def full_name
    "#{self.name}" + " " + "#{self.about}" + " " + "#{self.category}"
  end

  def self.reverse_sort
    order(id: :desc)
  end

  def average_rating
    Persona.where(collective_id: self.id).average(:stars).to_i
  end


  def popularity_rating
        self.average_rating + self.ratings.count
  end

  def popular?
    if self.average_rating >= 3
       "#{self.full_name}" + " " + "#{self.popularity_rating}"
    end
  end

  def self.popularity

    Collective.all.sort_by do |col|
      col.average_rating
    end.reverse
  end

  

end


