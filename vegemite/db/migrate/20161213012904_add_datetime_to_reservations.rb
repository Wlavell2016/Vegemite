class AddDatetimeToReservations < ActiveRecord::Migration[5.0]
  def change
      add_column :reservations, :date, :datetime
  end
end
