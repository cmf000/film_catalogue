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

ActiveRecord::Schema[7.2].define(version: 2024_10_07_031521) do
  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "directors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "film_countries", force: :cascade do |t|
    t.integer "film_id", null: false
    t.integer "country_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_film_countries_on_country_id"
    t.index ["film_id"], name: "index_film_countries_on_film_id"
  end

  create_table "film_directors", force: :cascade do |t|
    t.integer "film_id", null: false
    t.integer "director_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["director_id"], name: "index_film_directors_on_director_id"
    t.index ["film_id"], name: "index_film_directors_on_film_id"
  end

  create_table "film_genres", force: :cascade do |t|
    t.integer "film_id", null: false
    t.integer "genre_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["film_id"], name: "index_film_genres_on_film_id"
    t.index ["genre_id"], name: "index_film_genres_on_genre_id"
  end

  create_table "films", force: :cascade do |t|
    t.string "title"
    t.integer "release_year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "sinopsis"
    t.integer "status", default: 0
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "film_countries", "countries"
  add_foreign_key "film_countries", "films"
  add_foreign_key "film_directors", "directors"
  add_foreign_key "film_directors", "films"
  add_foreign_key "film_genres", "films"
  add_foreign_key "film_genres", "genres"
end
