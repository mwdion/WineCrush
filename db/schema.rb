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

ActiveRecord::Schema.define(version: 20140925171826) do

  create_table "menus", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tastes", force: true do |t|
    t.string   "flavor"
    t.string   "style"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wine_tastes", force: true do |t|
    t.integer  "wine_id"
    t.integer  "taste_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wines", force: true do |t|
    t.integer  "vintage"
    t.string   "country"
    t.string   "region"
    t.string   "purveyor"
    t.string   "grape"
    t.string   "style"
    t.float    "btg",        limit: 24
    t.float    "btb",        limit: 24
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
