class AddingImageGardens < ActiveRecord::Migration[5.0]
  def change
    add_column :gardens, :garden_image, :string
  end
end
