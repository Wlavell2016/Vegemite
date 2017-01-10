class AddGardenImageToGardens < ActiveRecord::Migration[5.0]
  def change
      change_table :gardens do |t|
          t.string :garden_image
    end
  end
end
