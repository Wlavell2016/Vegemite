class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.integer :veggie_id
      t.integer :user_id
      t.integer :garden_id
      t.text :note

      t.timestamps
    end
  end
end
