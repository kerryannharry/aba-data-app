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

ActiveRecord::Schema.define(version: 2021_05_03_033619) do

  create_table "appointments", force: :cascade do |t|
    t.datetime "start_time"
    t.time "duration"
    t.integer "client_id"
    t.integer "employee_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "behaviors", force: :cascade do |t|
    t.string "name"
    t.integer "frequency"
    t.time "duration"
    t.integer "note_id"
    t.integer "client_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "target_explanation"
    t.string "function_of_behavior"
    t.string "function"
  end

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "parent_name"
    t.string "parent_address"
    t.string "parent_phone_number"
    t.boolean "insurance"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
    t.string "parent_email"
    t.binary "client_picture"
    t.date "client_dob"
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "role"
    t.string "uid"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "bacbid"
    t.binary "employee_picture"
  end

  create_table "notes", force: :cascade do |t|
    t.integer "appointment_id"
    t.integer "employee_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.time "duration"
    t.text "note_explanation"
    t.date "session_date"
  end

  create_table "targets", force: :cascade do |t|
    t.string "title"
    t.text "descripition"
    t.boolean "score_correct"
    t.boolean "score_incorrect"
    t.integer "trial"
    t.text "protocols"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "verbal_prompt"
    t.boolean "partial_verbal_prompt"
    t.boolean "full_physical_prompt"
    t.boolean "partial_physical_prompt"
    t.boolean "gesture_prompt"
    t.boolean "visual_prompt"
    t.boolean "modeling_prompt"
    t.integer "client_id"
    t.integer "behavior_id"
  end

end
