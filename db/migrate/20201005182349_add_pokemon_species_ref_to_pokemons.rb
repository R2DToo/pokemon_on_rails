class AddPokemonSpeciesRefToPokemons < ActiveRecord::Migration[6.0]
  def change
    add_reference :pokemons, :pokemon_species, null: false, foreign_key: true
  end
end
