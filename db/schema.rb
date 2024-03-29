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

ActiveRecord::Schema.define(version: 20160830180405) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.string   "response"
    t.integer  "user_id"
    t.integer  "question_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["question_id"], name: "index_answers_on_question_id", using: :btree
    t.index ["user_id"], name: "index_questions_on_user_id", using: :btree
  end

  create_table "mcqs", force: :cascade do |t|
    t.string   "content"
    t.string   "a"
    t.string   "b"
    t.string   "c"
    t.string   "d"
    t.string   "correct"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mcrs", force: :cascade do |t|
    t.string   "response"
    t.integer  "mcq_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mcq_id"], name: "index_mcrs_on_mcq_id", using: :btree
    t.index ["user_id"], name: "index_mcrs_on_user_id", using: :btree
  end

  create_table "questions", force: :cascade do |t|
    t.string   "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "reg_no"
    t.string   "phone"
    t.string   "email"
    t.string   "password_digest"
    t.string   "repository"
    t.string   "portfolio"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "answers", "questions"
  add_foreign_key "answers", "users"
  add_foreign_key "mcrs", "mcqs"
  add_foreign_key "mcrs", "users"
end
