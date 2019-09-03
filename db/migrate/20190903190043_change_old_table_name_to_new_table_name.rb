class ChangeOldTableNameToNewTableName < ActiveRecord::Migration[5.2]
  def change
    rename_table :logins, :sessions
  end
end 

