class AddlatlongToUsers < ActiveRecord::Migration[5.0]
  def change
    change_table :users do |g|
        g.decimal :latitude, precision: 9, scale:  6
        g.decimal :longitude , precision: 9, scale: 6
      end
  end
end
