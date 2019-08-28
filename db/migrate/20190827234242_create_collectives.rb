class CreateCollectives < ActiveRecord::Migration[5.2]
  def change
    create_table :collectives do |t|
      t.string :name
      t.string :category
      t.string :about

      t.timestamps
    end
  end
end
