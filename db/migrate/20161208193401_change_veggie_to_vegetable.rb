class ChangeVeggieToVegetable < ActiveRecord::Migration[5.0]
  def change
       rename_table :veggies, :vegetables
       rename_table :gardens_veggies, :gardens_vegetables

       rename_column :reservations, :veggie_id, :vegetable_id
  end
end
