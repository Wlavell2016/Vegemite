class ChangeColumnInReservationTable < ActiveRecord::Migration[5.0]
  def change
    rename_column :reservations, :grower_id, :user_id
  end
end
