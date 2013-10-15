# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20130922205648) do

  create_table "companies", force: true do |t|
    t.string   "name"
    t.string   "area"
    t.string   "address"
    t.string   "zip_code"
    t.string   "phone"
    t.string   "fax"
    t.string   "country"
    t.string   "department"
    t.string   "city"
    t.string   "nit"
    t.string   "website"
    t.text     "description"
    t.integer  "amount_employees"
    t.string   "logo"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "companies", ["user_id"], name: "index_companies_on_user_id"

  create_table "convocations", force: true do |t|
    t.string   "position"
    t.integer  "amount_vacancies"
    t.string   "hierarchy"
    t.string   "city"
    t.string   "department"
    t.string   "area"
    t.string   "subarea"
    t.string   "gender"
    t.integer  "min_age"
    t.integer  "max_age"
    t.string   "education_level"
    t.string   "education_state"
    t.string   "language"
    t.text     "description"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "convocations", ["company_id"], name: "index_convocations_on_company_id"

  create_table "experiences", force: true do |t|
    t.string   "company"
    t.string   "phone"
    t.string   "sector"
    t.string   "position"
    t.string   "position_level"
    t.string   "position_equivalent"
    t.string   "area"
    t.string   "immediate_boss"
    t.date     "date_start"
    t.date     "date_end"
    t.integer  "time_experience"
    t.string   "city"
    t.text     "function_performed"
    t.boolean  "actual_job"
    t.boolean  "validated"
    t.integer  "person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "experiences", ["person_id"], name: "index_experiences_on_person_id"

  create_table "formal_educations", force: true do |t|
    t.string   "level"
    t.string   "area"
    t.string   "degree"
    t.string   "institute"
    t.string   "country"
    t.string   "department"
    t.string   "city"
    t.date     "date_start"
    t.date     "date_end"
    t.string   "study_state"
    t.boolean  "validated"
    t.integer  "person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "formal_educations", ["person_id"], name: "index_formal_educations_on_person_id"

  create_table "languages", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "institute"
    t.string   "domain"
    t.integer  "person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "languages", ["person_id"], name: "index_languages_on_person_id"

  create_table "no_formal_educations", force: true do |t|
    t.string   "type_study"
    t.string   "country"
    t.string   "department"
    t.string   "city"
    t.string   "degree"
    t.string   "institute"
    t.string   "area"
    t.integer  "time_intensity"
    t.date     "date_start"
    t.date     "date_end"
    t.text     "description"
    t.boolean  "validated"
    t.integer  "person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "no_formal_educations", ["person_id"], name: "index_no_formal_educations_on_person_id"

  create_table "people", force: true do |t|
    t.string   "name"
    t.string   "last_name"
    t.string   "identification"
    t.string   "phone"
    t.string   "city"
    t.string   "address"
    t.string   "type_identification"
    t.string   "account"
    t.date     "birthday"
    t.string   "cellphone"
    t.string   "career"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "people", ["user_id"], name: "index_people_on_user_id"

  create_table "personal_infos", force: true do |t|
    t.string   "gender"
    t.string   "marital_status"
    t.string   "country_birth"
    t.string   "dpto_birth"
    t.string   "city_birth"
    t.text     "job_profile"
    t.integer  "years_experience"
    t.float    "wage_aspiration"
    t.boolean  "has_job"
    t.string   "native_language"
    t.integer  "person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "personal_infos", ["person_id"], name: "index_personal_infos_on_person_id"

  create_table "references", force: true do |t|
    t.string   "name"
    t.string   "last_name"
    t.string   "phone"
    t.string   "cellphone"
    t.string   "type"
    t.string   "company"
    t.string   "position"
    t.integer  "person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "references", ["person_id"], name: "index_references_on_person_id"

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
