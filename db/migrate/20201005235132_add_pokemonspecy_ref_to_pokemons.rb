class AddPokemonspecyRefToPokemons < ActiveRecord::Migration[6.0]
  def change
    add_reference :pokemons, :pokemon_specy, null: false, foreign_key: true
  end
end
