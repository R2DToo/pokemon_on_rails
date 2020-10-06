# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_05_235132) do

  create_table "generations", force: :cascade do |t|
    t.string "name"
    t.string "region"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pokedex_entries", force: :cascade do |t|
    t.integer "pokedexnumber"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "pokemon_species_id", null: false
    t.integer "pokedexes_id", null: false
    t.index ["pokedexes_id"], name: "index_pokedex_entries_on_pokedexes_id"
    t.index ["pokemon_species_id"], name: "index_pokedex_entries_on_pokemon_species_id"
  end

  create_table "pokedexes", force: :cascade do |t|
    t.string "name"
    t.string "region"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pokemon_species", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "generation_id", null: false
    t.index ["generation_id"], name: "index_pokemon_species_on_generation_id"
  end

  create_table "pokemon_types", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "pokemons_id", null: false
    t.integer "types_id", null: false
    t.index ["pokemons_id"], name: "index_pokemon_types_on_pokemons_id"
    t.index ["types_id"], name: "index_pokemon_types_on_types_id"
  end

  create_table "pokemons", force: :cascade do |t|
    t.string "name"
    t.decimal "height"
    t.decimal "weight"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "pokemon_specy_id", null: false
    t.index ["pokemon_specy_id"], name: "index_pokemons_on_pokemon_specy_id"
  end

  create_table "types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "pokedex_entries", "pokedexes", column: "pokedexes_id"
  add_foreign_key "pokedex_entries", "pokemon_species", column: "pokemon_species_id"
  add_foreign_key "pokemon_species", "generations"
  add_foreign_key "pokemon_types", "pokemons", column: "pokemons_id"
  add_foreign_key "pokemon_types", "types", column: "types_id"
  add_foreign_key "pokemons", "pokemon_species"
end
