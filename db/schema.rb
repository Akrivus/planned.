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

ActiveRecord::Schema[7.0].define(version: 2022_11_11_222157) do
  create_table "audits", force: :cascade do |t|
    t.integer "auditable_id"
    t.string "auditable_type"
    t.integer "associated_id"
    t.string "associated_type"
    t.integer "user_id"
    t.string "user_type"
    t.string "username"
    t.string "action"
    t.text "audited_changes"
    t.integer "version", default: 0
    t.string "comment"
    t.string "remote_address"
    t.string "request_uuid"
    t.datetime "created_at"
    t.index ["associated_type", "associated_id"], name: "associated_index"
    t.index ["auditable_type", "auditable_id", "version"], name: "auditable_index"
    t.index ["created_at"], name: "index_audits_on_created_at"
    t.index ["request_uuid"], name: "index_audits_on_request_uuid"
    t.index ["user_id", "user_type"], name: "user_index"
  end

  create_table "days", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "general_feeling"
    t.integer "general_pain_level"
    t.integer "general_pain_area"
    t.integer "general_problems"
    t.integer "discharge_color"
    t.integer "discharge_flow"
    t.integer "discharge_texture"
    t.integer "discharge_odor"
    t.string "note"
    t.integer "year"
    t.integer "month"
    t.integer "day"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["day"], name: "index_days_on_day"
    t.index ["month"], name: "index_days_on_month"
    t.index ["user_id"], name: "index_days_on_user_id"
    t.index ["year"], name: "index_days_on_year"
  end

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer "priority", default: 0, null: false
    t.integer "attempts", default: 0, null: false
    t.text "handler", null: false
    t.text "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string "locked_by"
    t.string "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["priority", "run_at"], name: "delayed_jobs_priority"
  end

  create_table "medications", force: :cascade do |t|
    t.integer "day_id", null: false
    t.integer "category"
    t.integer "feeling_before"
    t.integer "feeling_after"
    t.string "name"
    t.decimal "dosage"
    t.integer "dosage_unit"
    t.string "note"
    t.time "consumed_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["day_id"], name: "index_medications_on_day_id"
  end

  create_table "user_sessions", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "session_secret"
    t.string "sign_in_ip"
    t.string "sign_in_device"
    t.datetime "expires_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["session_secret"], name: "index_user_sessions_on_session_secret"
    t.index ["user_id"], name: "index_user_sessions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "phone_number"
    t.string "username"
    t.string "enc_password"
    t.string "password_reset_code"
    t.boolean "accepts_terms"
    t.string "access_token"
    t.string "special_word"
    t.string "spirit_animal"
    t.integer "favorite_color"
    t.string "time_zone"
    t.string "last_sign_in_ip"
    t.string "last_sign_in_device"
    t.datetime "last_sign_in_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["phone_number"], name: "index_users_on_phone_number"
    t.index ["username"], name: "index_users_on_username"
  end

  add_foreign_key "days", "users"
  add_foreign_key "medications", "days"
  add_foreign_key "user_sessions", "users"
end
