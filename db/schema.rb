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

ActiveRecord::Schema.define(version: 2022_07_29_101900) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "anas", force: :cascade do |t|
    t.text "title"
    t.text "content"
    t.integer "upvotes", default: 0
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "anas_anecdotes", force: :cascade do |t|
    t.integer "ana_id"
    t.integer "anecdote_id"
  end

  create_table "anas_tags", id: false, force: :cascade do |t|
    t.integer "ana_id"
    t.integer "tag_id"
  end

  create_table "anecdotes", force: :cascade do |t|
    t.text "title"
    t.text "content"
    t.integer "upvotes", default: 0
    t.integer "user_id"
    t.integer "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "comment_id"
  end

  create_table "anecdotes_tags", id: false, force: :cascade do |t|
    t.integer "anecdote_id"
    t.integer "tag_id"
  end

  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.integer "anecdote_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "tags", force: :cascade do |t|
    t.text "name"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "themes", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.text "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.boolean "admin", default: false
    t.integer "theme_id"
    t.text "sort", default: "top"
  end

  create_table "votes", id: :serial, force: :cascade do |t|
    t.string "votable_type"
    t.integer "votable_id"
    t.string "voter_type"
    t.integer "voter_id"
    t.boolean "vote_flag"
    t.string "vote_scope"
    t.integer "vote_weight"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope"
    t.index ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope"
  end

end
