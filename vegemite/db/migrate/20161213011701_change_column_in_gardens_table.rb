class ChangeColumnInGardensTable < ActiveRecord::Migration[5.0]
  def change
    rename_column :gardens, :owner_id, :user_id
  end
end
