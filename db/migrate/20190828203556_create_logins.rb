class CreateLogins < ActiveRecord::Migration[5.2]
  def change
    create_table :logins do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
