class CreateShoes < ActiveRecord::Migration[7.0]
  def change
    create_table :shoes do |t|
      t.string :name
      t.string :model
      t.string :edition
      t.string :year
      t.string :color

      t.timestamps
    end
  end
end
