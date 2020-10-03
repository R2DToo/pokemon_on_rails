class CreatePokemonSpecies < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemon_species do |t|

      t.timestamps
    end
  end
end
