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

ActiveRecord::Schema[7.0].define(version: 2022_08_29_214702) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "people", force: :cascade do |t|
    t.string "firstname"
    t.string "middlename"
    t.string "surname"
    t.string "lastname"
    t.integer "age"
    t.text "address"
    t.integer "status"
    t.integer "prog_languages"
    t.integer "hobbies"
    t.binary "photoImg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "feature_imageM"
    t.integer "feature_imageD"
    t.integer "feature_imageWorkM"
    t.integer "feature_imageWorkD"
    t.text "linkLive"
    t.text "link2Source"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "people_id", null: false
    t.index ["people_id"], name: "index_projects_on_people_id"
  end

  add_foreign_key "projects", "people", column: "people_id"
end
