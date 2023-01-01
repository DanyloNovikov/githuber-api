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

ActiveRecord::Schema[7.0].define(version: 2022_12_29_160530) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "project_calculations", force: :cascade do |t|
    t.bigint "project_id"
    t.string "username", default: "", null: false
    t.datetime "start_week", null: false
    t.datetime "end_week", null: false
    t.integer "create_pull_request_score", default: 0, null: false
    t.integer "pull_request_comment_score", default: 0, null: false
    t.integer "pull_request_review_score", default: 0, null: false
    t.integer "total_score", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_project_calculations_on_project_id"
    t.index ["username"], name: "index_project_calculations_on_username"
  end

  create_table "projects", force: :cascade do |t|
    t.string "owner_username", default: "", null: false
    t.string "project_name", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_name"], name: "index_projects_on_project_name"
  end

end
