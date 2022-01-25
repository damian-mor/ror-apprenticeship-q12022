# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_01_24_201402) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "egg_groups", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pokemons", force: :cascade do |t|
    t.string "name"
    t.boolean "is_baby"
    t.boolean "is_legendary"
    t.boolean "is_mythical"
    t.boolean "forms_switchable"
    t.boolean "is_default"
    t.bigint "variety_of_pokemon_id"
    t.bigint "evolves_to_pokemon_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "egg_group_id", null: false
    t.index ["egg_group_id"], name: "index_pokemons_on_egg_group_id"
    t.index ["evolves_to_pokemon_id"], name: "index_pokemons_on_evolves_to_pokemon_id"
    t.index ["variety_of_pokemon_id"], name: "index_pokemons_on_variety_of_pokemon_id"
  end

  add_foreign_key "pokemons", "egg_groups"
  add_foreign_key "pokemons", "pokemons", column: "evolves_to_pokemon_id"
  add_foreign_key "pokemons", "pokemons", column: "variety_of_pokemon_id"
end
