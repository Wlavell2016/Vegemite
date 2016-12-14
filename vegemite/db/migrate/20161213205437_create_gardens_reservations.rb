class CreateGardensReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :gardens_reservations do |t|
      t.integer :garden_id
      t.integer :reservation_id
    end
  end
end
