class CreateGardensVeggies < ActiveRecord::Migration[5.0]
  def change
    create_table :gardens_veggies do |t|
      t.integer :garden_id
      t.integer :veggie_id
    end
  end
end
