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

ActiveRecord::Schema.define(version: 20141023050112) do

  create_table "art_works", force: true do |t|
    t.string   "name"
    t.integer  "artist_id"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
    t.integer  "musueum_id"
  end

  add_index "art_works", ["artist_id"], name: "index_art_works_on_artist_id"
  add_index "art_works", ["musueum_id"], name: "index_art_works_on_musueum_id"

  create_table "artists", force: true do |t|
    t.string   "name"
    t.string   "bio"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "museums", force: true do |t|
    t.string   "name"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "musuems", force: true do |t|
    t.string   "name"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
