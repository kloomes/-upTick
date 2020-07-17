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

ActiveRecord::Schema.define(version: 2020_07_17_113923) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bad_day_marks", force: :cascade do |t|
    t.integer "status"
    t.bigint "bad_habit_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bad_habit_id"], name: "index_bad_day_marks_on_bad_habit_id"
  end

  create_table "bad_habits", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.integer "days_per_week"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_bad_habits_on_user_id"
  end

  create_table "good_day_marks", force: :cascade do |t|
    t.integer "status"
    t.bigint "good_habit_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["good_habit_id"], name: "index_good_day_marks_on_good_habit_id"
  end

  create_table "good_habits", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.integer "days_per_week"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_good_habits_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bad_day_marks", "bad_habits"
  add_foreign_key "bad_habits", "users"
  add_foreign_key "good_day_marks", "good_habits"
  add_foreign_key "good_habits", "users"
end
