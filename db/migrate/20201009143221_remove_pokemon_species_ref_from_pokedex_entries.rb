class RemovePokemonSpeciesRefFromPokedexEntries < ActiveRecord::Migration[6.0]
  def change
    remove_reference :pokedex_entries, :pokemon_species, null: false, foreign_key: true
  end
end
