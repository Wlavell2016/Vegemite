class DropJoinTables < ActiveRecord::Migration[5.0]
  def change
    drop_table :gardens_reservations

  end
end
