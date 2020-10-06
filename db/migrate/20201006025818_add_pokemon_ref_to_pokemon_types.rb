class AddPokemonRefToPokemonTypes < ActiveRecord::Migration[6.0]
  def change
    add_reference :pokemon_types, :pokemon, null: false, foreign_key: true
  end
end
