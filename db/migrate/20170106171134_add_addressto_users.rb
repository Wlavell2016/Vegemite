class AddAddresstoUsers < ActiveRecord::Migration[5.0]
  def change
    def change
        change_table :users do |t|
            t.string :address
        end
      end
  end
end
