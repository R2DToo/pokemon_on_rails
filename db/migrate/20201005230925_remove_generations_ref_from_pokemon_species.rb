class RemoveGenerationsRefFromPokemonSpecies < ActiveRecord::Migration[6.0]
  def change
    remove_reference :pokemon_species, :generations, null: false, foreign_key: true
  end
end
