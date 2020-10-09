class AddPokedexRefToPokedexEntries < ActiveRecord::Migration[6.0]
  def change
    add_reference :pokedex_entries, :pokedex, null: false, foreign_key: true
  end
end
