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

ActiveRecord::Schema.define(version: 2020_08_31_231248) do

  create_table "instructor_resorts", force: :cascade do |t|
    t.integer "instructor_id", null: false
    t.integer "resort_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["instructor_id"], name: "index_instructor_resorts_on_instructor_id"
    t.index ["resort_id"], name: "index_instructor_resorts_on_resort_id"
  end

  create_table "instructors", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.date "date_of_birth"
    t.string "email"
    t.string "specialty"
    t.integer "group_size"
    t.string "group_age"
    t.string "group_skill"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "image"
    t.integer "years_experience"
    t.boolean "certification"
    t.text "bio"
    t.string "hometown"
  end

  create_table "lessons", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.integer "instructor_id"
    t.string "date"
    t.integer "resort_id"
  end

  create_table "requests", force: :cascade do |t|
    t.integer "instructor_id", null: false
    t.integer "user_id", null: false
    t.integer "resort_id", null: false
    t.date "date"
    t.boolean "early_am"
    t.boolean "mid_am"
    t.boolean "early_pm"
    t.boolean "late_pm"
    t.integer "group_size"
    t.string "group_age"
    t.string "group_skill"
    t.string "specialty"
    t.boolean "approved"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["instructor_id"], name: "index_requests_on_instructor_id"
    t.index ["resort_id"], name: "index_requests_on_resort_id"
    t.index ["user_id"], name: "index_requests_on_user_id"
  end

  create_table "resorts", force: :cascade do |t|
    t.string "name"
    t.string "state"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "instructor_id", null: false
    t.integer "rating"
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["instructor_id"], name: "index_reviews_on_instructor_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "schedules", force: :cascade do |t|
    t.integer "instructor_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "date"
    t.boolean "available"
    t.index ["instructor_id"], name: "index_schedules_on_instructor_id"
  end

  create_table "searches", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "resort_id", null: false
    t.string "specialty"
    t.integer "duration"
    t.integer "group_size"
    t.string "group_age"
    t.string "group_skill"
    t.date "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["resort_id"], name: "index_searches_on_resort_id"
    t.index ["user_id"], name: "index_searches_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.date "date_of_birth"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "instructor_resorts", "instructors"
  add_foreign_key "instructor_resorts", "resorts"
  add_foreign_key "requests", "instructors"
  add_foreign_key "requests", "resorts"
  add_foreign_key "requests", "users"
  add_foreign_key "reviews", "instructors"
  add_foreign_key "reviews", "users"
  add_foreign_key "schedules", "instructors"
  add_foreign_key "searches", "resorts"
  add_foreign_key "searches", "users"
end
