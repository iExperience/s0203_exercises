class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.integer :distance
      t.string :highlight
      t.string :description

      t.timestamps null: false
    end
  end
end
