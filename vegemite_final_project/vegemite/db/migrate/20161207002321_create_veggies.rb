class CreateVeggies < ActiveRecord::Migration[5.0]
  def change
    create_table :veggies do |t|
      t.string :name
      t.string :start_month
      t.string :end_month
      t.string :image

      t.timestamps
    end
  end
end
