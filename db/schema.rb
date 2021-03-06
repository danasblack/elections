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

ActiveRecord::Schema.define(version: 20160517004754) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.string   "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "answer_id"
  end

  create_table "ballot_candidates", force: :cascade do |t|
    t.integer  "party_candidate_id"
    t.integer  "user_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "ballot_id"
    t.integer  "local_candidate_id"
  end

  create_table "ballots", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "candidate_issues", force: :cascade do |t|
    t.string   "candidate_id"
    t.string   "issue_id"
    t.string   "value"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "issues", force: :cascade do |t|
    t.string   "name"
    t.string   "question"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "local_candidates", force: :cascade do |t|
    t.string   "name"
    t.string   "position"
    t.string   "party_affiliation"
    t.string   "experience"
    t.string   "background"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "image"
  end

  create_table "party_candidates", force: :cascade do |t|
    t.string   "name"
    t.string   "party_affiliation"
    t.string   "experience"
    t.string   "background"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "image"
  end

  create_table "questions", force: :cascade do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "question_id"
    t.string   "text"
    t.integer  "answer_id"
  end

  create_table "quiz_questions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "question"
  end

  create_table "quizzes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_issues", force: :cascade do |t|
    t.string   "user_id"
    t.string   "issue_id"
    t.string   "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
