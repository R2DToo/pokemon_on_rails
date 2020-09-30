class CreatePokemons < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemons do |t|
      t.integer :pokemonid
      t.string :name
      t.decimal :height
      t.decimal :weight

      t.timestamps
    end
  end
end
