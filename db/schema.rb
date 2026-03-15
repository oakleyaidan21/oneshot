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

ActiveRecord::Schema[8.1].define(version: 2026_03_15_022647) do
  create_table "bags", force: :cascade do |t|
    t.integer "coffee_id", null: false
    t.datetime "created_at", null: false
    t.date "roast_date"
    t.integer "status"
    t.datetime "updated_at", null: false
    t.integer "weight_grams"
    t.index ["coffee_id"], name: "index_bags_on_coffee_id"
  end

  create_table "coffees", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "name"
    t.string "origin"
    t.integer "roast_level"
    t.string "roaster"
    t.datetime "updated_at", null: false
  end

  create_table "grinders", force: :cascade do |t|
    t.string "brand"
    t.string "burr_type"
    t.datetime "created_at", null: false
    t.string "model"
    t.datetime "updated_at", null: false
  end

  create_table "sessions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "ip_address"
    t.datetime "updated_at", null: false
    t.string "user_agent"
    t.integer "user_id", null: false
    t.index ["user_id"], name: "index_sessions_on_user_id"
  end

  create_table "shots", force: :cascade do |t|
    t.integer "bag_id", null: false
    t.datetime "created_at", null: false
    t.float "dose"
    t.integer "extraction_time"
    t.float "grind_setting"
    t.integer "grinder_id", null: false
    t.text "notes"
    t.integer "rating"
    t.datetime "updated_at", null: false
    t.float "yield_amount"
    t.index ["bag_id"], name: "index_shots_on_bag_id"
    t.index ["grinder_id"], name: "index_shots_on_grinder_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "email", null: false
    t.string "name", null: false
    t.string "password_digest", null: false
    t.datetime "updated_at", null: false
    t.boolean "verified", default: false, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "bags", "coffees"
  add_foreign_key "sessions", "users"
  add_foreign_key "shots", "bags"
  add_foreign_key "shots", "grinders"
end
