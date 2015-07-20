class CreatePokemons < ActiveRecord::Migration
  def change
    create_table :pokemons do |t|
      t.string :name
      t.text :element_text
      t.text :power_level

      t.timestamps null: false
    end
  end
end
