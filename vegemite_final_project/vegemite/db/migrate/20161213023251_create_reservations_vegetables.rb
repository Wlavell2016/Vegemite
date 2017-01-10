class CreateReservationsVegetables < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations_vegetables do |t|
      t.integer :reservation_id
      t.integer :vegetable_id
    end
  end
end
