class CreatePokemons < ActiveRecord::Migration
  def change
    create_table :pokemons do |t|
      t.string :name
      t.text :element_text
      t.string :power_level
      t.string :int

      t.timestamps null: false
    end
  end
end
