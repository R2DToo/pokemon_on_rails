class CreatePokemonTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemon_types do |t|

      t.timestamps
    end
  end
end
