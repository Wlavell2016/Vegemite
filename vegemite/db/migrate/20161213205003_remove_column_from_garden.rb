class RemoveColumnFromGarden < ActiveRecord::Migration[5.0]
  def change
    remove_column :gardens, :user_id, :integer
  end
end
