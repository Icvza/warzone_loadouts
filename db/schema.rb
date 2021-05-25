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

ActiveRecord::Schema.define(version: 2021_05_25_031120) do

  create_table "gamemodes", force: :cascade do |t|
    t.string "mode_name"
  end

  create_table "loadouts", force: :cascade do |t|
    t.integer "user_id"
    t.string "creator"
    t.string "loadout_name"
    t.string "weapon"
    t.string "optic"
    t.string "muzzle"
    t.string "barrel"
    t.string "underbarrel"
    t.string "ammunition"
    t.string "stock"
    t.string "girp"
    t.string "gun_perk"
    t.string "perk_1"
    t.string "perk_2"
    t.string "perk_3"
    t.string "lethal"
    t.string "tactical"
    t.string "remarks"
  end

  create_table "sessions", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tactics", force: :cascade do |t|
    t.integer "user_id"
    t.integer "gamemode_id"
    t.string "strategy"
    t.string "creator"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.string "uid"
    t.string "provider"
  end

end
