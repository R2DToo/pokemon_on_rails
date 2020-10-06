class RemoveTypesRefFromPokemonTypes < ActiveRecord::Migration[6.0]
  def change
    remove_reference :pokemon_types, :types, null: false, foreign_key: true
  end
end
