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

ActiveRecord::Schema.define(version: 2020_07_17_004812) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "conditions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "conditions_patients", id: false, force: :cascade do |t|
    t.bigint "patient_id", null: false
    t.bigint "condition_id", null: false
  end

  create_table "medications", force: :cascade do |t|
    t.string "name"
    t.string "dose"
    t.string "frequency"
    t.string "route"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "medications_patients", id: false, force: :cascade do |t|
    t.bigint "patient_id", null: false
    t.bigint "medication_id", null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string "firstName"
    t.string "lastName"
    t.string "dob"
    t.string "allergies"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
