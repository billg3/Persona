class ChangeCollectiveTable < ActiveRecord::Migration[5.2]
  def change
    add_column :collectives, :creator_id, :integer
  end
end
