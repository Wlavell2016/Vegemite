class ChangeUserTypeToCategoryUser < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :usertype, :categoryuser
  end
end
