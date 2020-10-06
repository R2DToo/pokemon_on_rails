class RemovePokemonsRefFromPokemonTypes < ActiveRecord::Migration[6.0]
  def change
    remove_reference :pokemon_types, :pokemons, null: false, foreign_key: true
  end
end
