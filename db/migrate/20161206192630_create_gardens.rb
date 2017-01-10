class CreateGardens < ActiveRecord::Migration[5.0]
  def change
    create_table :gardens do |t|
      t.string :title
      t.text :description
      t.string :address
      t.integer :size

      t.timestamps
    end
  end
end
