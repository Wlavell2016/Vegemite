class CreateGardensUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :gardens_users do |t|
      t.integer :garden_id
      t.integer :user_id
    end
  end
end
