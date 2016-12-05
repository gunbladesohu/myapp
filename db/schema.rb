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

ActiveRecord::Schema.define(version: 20161205043018) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "confidence_ratings", force: :cascade do |t|
    t.string   "confidence_level"
    t.string   "reason"
    t.string   "rater"
    t.datetime "insertTime"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "credibility_ratings", force: :cascade do |t|
    t.string   "credibility_level"
    t.string   "reason"
    t.string   "rater"
    t.datetime "insertTime"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "evidence_items", force: :cascade do |t|
    t.string   "context_how"
    t.string   "context_why"
    t.string   "context_who"
    t.string   "context_what"
    t.string   "context_where"
    t.string   "context_when"
    t.string   "benefit"
    t.string   "result"
    t.datetime "insertTime"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "evidence_sources", force: :cascade do |t|
    t.string   "bib_ref"
    t.string   "research_level"
    t.datetime "insertTime"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "method_sdms", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "insertTime"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "methodologies", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "insertTime"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "research_designs", force: :cascade do |t|
    t.string   "question"
    t.string   "method"
    t.string   "metrics"
    t.string   "participants"
    t.datetime "insertTime"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.boolean  "admin"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
  end

end
