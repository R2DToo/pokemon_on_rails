class AddTypesRefToPokemonTypes < ActiveRecord::Migration[6.0]
  def change
    add_reference :pokemon_types, :types, null: false, foreign_key: true
  end
end
