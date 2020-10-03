class CreatePokedexes < ActiveRecord::Migration[6.0]
  def change
    create_table :pokedexes do |t|
      t.string :name
      t.string :region

      t.timestamps
    end
  end
end
