class RenameCoolnessToStarsInPersonas < ActiveRecord::Migration[5.2]
  def change
    rename_column :personas, :coolness, :stars 
  end
end
