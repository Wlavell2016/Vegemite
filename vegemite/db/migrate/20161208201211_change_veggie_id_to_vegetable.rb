class ChangeVeggieIdToVegetable < ActiveRecord::Migration[5.0]
  def change
    rename_column :gardens_vegetables, :veggie_id, :vegetable_id
  end
end
