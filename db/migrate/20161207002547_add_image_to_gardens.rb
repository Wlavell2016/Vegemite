class AddImageToGardens < ActiveRecord::Migration[5.0]
  def change
    change_table :gardens do |t|
      t.string :image
    end
  end
end
