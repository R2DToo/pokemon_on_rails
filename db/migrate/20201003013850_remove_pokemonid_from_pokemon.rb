class RemovePokemonidFromPokemon < ActiveRecord::Migration[6.0]
  def change
    remove_column :pokemons, :pokemonid, :integer
  end
end
