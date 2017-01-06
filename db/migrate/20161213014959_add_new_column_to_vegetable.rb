class AddNewColumnToVegetable < ActiveRecord::Migration[5.0]
  def change
    add_column :vegetables, :harvest, :string
  end
end
