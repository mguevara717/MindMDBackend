# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_11_26_034810) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "doctors", force: :cascade do |t|
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.string "title"
    t.string "img_url"
    t.string "gender"
    t.string "location_slug"
    t.string "office_name"
    t.boolean "accept_new_patients"
    t.string "city"
    t.decimal "lat", precision: 10, scale: 6
    t.decimal "lon", precision: 10, scale: 6
    t.string "state"
    t.string "street"
    t.string "street2"
    t.string "zip"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "bio"
    t.string "practice"
    t.string "description"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.string "body"
    t.string "img_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "doctor_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "mood"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "profile_img"
  end

end
