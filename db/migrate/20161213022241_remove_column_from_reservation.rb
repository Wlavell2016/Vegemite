class RemoveColumnFromReservation < ActiveRecord::Migration[5.0]
  def change
    remove_column :reservations, :vegetable_id, :integer
    # remove_column :users, :usertype, :string
  end
end
