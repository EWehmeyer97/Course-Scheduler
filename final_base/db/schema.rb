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

ActiveRecord::Schema.define(version: 20190417054424) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "Email"
    t.string "Name"
    t.string "Password"
    t.string "Course_num"
    t.string "Manage_year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "Title"
    t.string "password_digest"
    t.string "passowrd_hash"
  end

  create_table "applications", force: :cascade do |t|
    t.string "Student_name"
    t.string "Email"
    t.string "Course_num"
    t.string "Grader_period"
    t.string "Recommand_letter"
    t.string "Course_grade"
    t.string "Student_id"
    t.string "Status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "section_id"
    t.index ["section_id"], name: "index_applications_on_section_id"
  end

  create_table "professers", force: :cascade do |t|
    t.string "Email"
    t.string "Name"
    t.string "Password"
    t.string "Section_num"
    t.string "Course_num"
    t.string "Teaching_year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "Title"
    t.string "password_digest"
    t.string "passowrd_hash"
  end

  create_table "recommands", force: :cascade do |t|
    t.string "Professer_id"
    t.string "Request_flag"
    t.string "Student_name"
    t.string "Course_num"
    t.string "Grader_year"
    t.string "Reason"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sections", force: :cascade do |t|
    t.string "Section_num"
    t.string "Course_num"
    t.string "Section_semester"
    t.string "Section_time"
    t.integer "Num_of_graders"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "Email"
    t.string "Name"
    t.string "Password"
    t.string "Graduate_year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "Major"
    t.string "password_digest"
    t.string "passowrd_hash"
  end

  add_foreign_key "applications", "sections"
end
