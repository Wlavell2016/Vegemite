class CreateReservationsUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations_users do |t|
      t.integer :reservation_id
      t.integer :user_id
    end
  end
end
