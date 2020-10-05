class AddPokedexesRefToPokedexEntries < ActiveRecord::Migration[6.0]
  def change
    add_reference :pokedex_entries, :pokedexes, null: false, foreign_key: true
  end
end
