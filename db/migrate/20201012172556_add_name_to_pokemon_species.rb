class AddNameToPokemonSpecies < ActiveRecord::Migration[6.0]
  def change
    add_column :pokemon_species, :name, :string
  end
end
