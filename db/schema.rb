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

ActiveRecord::Schema.define(version: 20161211123217) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "rubric_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["rubric_id"], name: "index_categories_on_rubric_id", using: :btree
  end

  create_table "criteria", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "ancestry"
    t.index ["ancestry"], name: "index_criteria_on_ancestry", using: :btree
    t.index ["category_id"], name: "index_criteria_on_category_id", using: :btree
  end

  create_table "median_functions", force: :cascade do |t|
  end

  create_table "rubrics", force: :cascade do |t|
    t.string   "topic"
    t.string   "tags"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "username"
  end

  add_foreign_key "categories", "rubrics"
  add_foreign_key "criteria", "categories"
end
