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

ActiveRecord::Schema.define(version: 2022_03_14_123003) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cameras", force: :cascade do |t|
    t.string "brand"
    t.string "name"
    t.string "overview"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "camera_type"
  end

  create_table "comments", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.bigint "photo_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["photo_id"], name: "index_comments_on_photo_id"
  end

  create_table "photographers", force: :cascade do |t|
    t.string "name"
    t.string "hometown"
    t.integer "years_experience"
    t.string "hobbies"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "age"
  end

  create_table "photos", force: :cascade do |t|
    t.string "image"
    t.string "caption"
    t.integer "likes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.bigint "camera_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["camera_id"], name: "index_reviews_on_camera_id"
  end

  add_foreign_key "comments", "photos"
  add_foreign_key "reviews", "cameras"
end
