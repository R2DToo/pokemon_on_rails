class AddGenerationsRefToPokemonSpecies < ActiveRecord::Migration[6.0]
  def change
    add_reference :pokemon_species, :generations, null: false, foreign_key: true
  end
end
