class CreatePokedexEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :pokedex_entries do |t|
      t.integer :pokedexnumber

      t.timestamps
    end
  end
end
