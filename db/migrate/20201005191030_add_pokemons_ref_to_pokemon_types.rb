class AddPokemonsRefToPokemonTypes < ActiveRecord::Migration[6.0]
  def change
    add_reference :pokemon_types, :pokemons, null: false, foreign_key: true
  end
end
