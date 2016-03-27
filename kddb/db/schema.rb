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

ActiveRecord::Schema.define(version: 20160327045807) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "affiliations", force: :cascade do |t|
    t.string   "affiliation_id"
    t.string   "name"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "authors", force: :cascade do |t|
    t.string   "author_id"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "papers", force: :cascade do |t|
    t.string   "paper_id"
    t.string   "title"
    t.string   "publish_year"
    t.string   "conference_id"
    t.string   "conference_abbrv"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "papers_authors_affiliations", force: :cascade do |t|
    t.string   "paper_id"
    t.string   "author_id"
    t.string   "affiliation_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.decimal  "author_score"
    t.decimal  "affiliation_score"
  end

end
