class DropUserJoin < ActiveRecord::Migration[5.0]
  def change
    drop_table :gardens_users
    drop_table :reservations_users
  end
end
