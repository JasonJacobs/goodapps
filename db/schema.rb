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

ActiveRecord::Schema.define(version: 20150411021735) do

  create_table "lists", force: :cascade do |t|
    t.text     "title"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lists_single_apps", id: false, force: :cascade do |t|
    t.integer "list_id",       null: false
    t.integer "single_app_id", null: false
  end

  add_index "lists_single_apps", ["list_id", "single_app_id"], name: "index_lists_single_apps_on_list_id_and_single_app_id"
  add_index "lists_single_apps", ["single_app_id", "list_id"], name: "index_lists_single_apps_on_single_app_id_and_list_id"

  create_table "single_apps", force: :cascade do |t|
    t.text     "name"
    t.text     "description"
    t.text     "image"
    t.string   "price"
    t.text     "url"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.text     "name"
    t.text     "profile_image"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
