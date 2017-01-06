class ChangeUserIdToOwnerAndGrowerIds < ActiveRecord::Migration[5.0]
    def change
      rename_column :gardens, :user_id, :owner_id
      rename_column :reservations, :user_id, :grower_id
    end
end
