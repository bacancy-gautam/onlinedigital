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

ActiveRecord::Schema.define(version: 2020_02_13_130939) do

  create_table "abouts", force: :cascade do |t|
    t.string "info", default: "", null: false
    t.integer "resume_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resume_id"], name: "index_abouts_on_resume_id"
  end

  create_table "addresses", force: :cascade do |t|
    t.string "street"
    t.string "city"
    t.string "state"
    t.integer "pincode"
    t.integer "business_id"
    t.integer "resume_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["business_id"], name: "index_addresses_on_business_id"
    t.index ["resume_id"], name: "index_addresses_on_resume_id"
  end

  create_table "businesses", force: :cascade do |t|
    t.string "name"
    t.string "info"
    t.string "email"
    t.string "website"
    t.string "business_pan"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_businesses_on_user_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.integer "contact_no"
    t.integer "resume_id"
    t.integer "business_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["business_id"], name: "index_contacts_on_business_id"
    t.index ["resume_id"], name: "index_contacts_on_resume_id"
  end

  create_table "educations", force: :cascade do |t|
    t.boolean "edu_type"
    t.string "name"
    t.string "degree"
    t.string "cource"
    t.date "pass_year"
    t.string "city"
    t.string "result"
    t.string "state"
    t.integer "resume_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resume_id"], name: "index_educations_on_resume_id"
  end

  create_table "experiences", force: :cascade do |t|
    t.string "exp_type"
    t.string "name"
    t.string "city"
    t.date "start_date"
    t.date "end_date"
    t.string "info"
    t.integer "resume_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resume_id"], name: "index_experiences_on_resume_id"
  end

  create_table "interests", force: :cascade do |t|
    t.string "interest_list"
    t.integer "resume_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resume_id"], name: "index_interests_on_resume_id"
  end

  create_table "resumes", force: :cascade do |t|
    t.string "first_name", default: "", null: false
    t.string "last_name", default: "", null: false
    t.string "email", default: "", null: false
    t.string "website", default: "", null: false
    t.string "linkedin", default: "", null: false
    t.datetime "birthdate", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_resumes_on_user_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "skill_list"
    t.integer "resume_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resume_id"], name: "index_skills_on_resume_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name", default: "", null: false
    t.string "last_name", default: "", null: false
    t.integer "mobile"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
