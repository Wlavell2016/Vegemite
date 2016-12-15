class RemoveJoinTable < ActiveRecord::Migration[5.0]
  def change
    drop_table :gardens_users
  end
end
