class AddTypeRefToPokemonTypes < ActiveRecord::Migration[6.0]
  def change
    add_reference :pokemon_types, :type, null: false, foreign_key: true
  end
end
