class ChangeColumnInVegetableTable < ActiveRecord::Migration[5.0]
    def change
        rename_column :vegetables, :start_month, :sow_period
        rename_column :vegetables, :end_month, :plant_out_period
    end
end
