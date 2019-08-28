class CreatePersonas < ActiveRecord::Migration[5.2]
  def change
    create_table :personas do |t|
      t.integer :user_id
      t.integer :collective_id
      t.string :connection
      t.string :comment
      t.string :coolness

      t.timestamps
    end
  end
end
