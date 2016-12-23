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

ActiveRecord::Schema.define(version: 20161223105359) do

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
    t.string   "research_level"
    t.datetime "insertTime"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "rating"
    t.string   "title"
    t.string   "author"
    t.integer  "year"
    t.string   "source"
    t.string   "journal_book"
    t.string   "publisher"
    t.string   "DOI"
    t.integer  "number"
    t.integer  "volume"
    t.integer  "page_numbers"
    t.boolean  "isPassed"
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

  create_table "microposts", force: :cascade do |t|
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "picture"
    t.index ["user_id", "created_at"], name: "index_microposts_on_user_id_and_created_at", using: :btree
    t.index ["user_id"], name: "index_microposts_on_user_id", using: :btree
  end

  create_table "relationships", force: :cascade do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["followed_id"], name: "index_relationships_on_followed_id", using: :btree
    t.index ["follower_id", "followed_id"], name: "index_relationships_on_follower_id_and_followed_id", unique: true, using: :btree
    t.index ["follower_id"], name: "index_relationships_on_follower_id", using: :btree
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

  create_table "search_queries", force: :cascade do |t|
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_search_queries_on_user_id", using: :btree
  end

  create_table "user_news", force: :cascade do |t|
    t.string   "content"
    t.integer  "sender_id"
    t.integer  "receiver_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.boolean  "read"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.boolean  "admin"
    t.string   "activation_digest"
    t.boolean  "activated"
    t.datetime "activated_at"
    t.string   "reset_digest"
    t.datetime "reset_sent_at"
    t.boolean  "searcher_role"
    t.boolean  "administrator_role"
    t.boolean  "analyst_role"
    t.boolean  "moderator_role"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
  end

  add_foreign_key "microposts", "users"
  add_foreign_key "search_queries", "users"
end
