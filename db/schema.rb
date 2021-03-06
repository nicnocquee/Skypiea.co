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

ActiveRecord::Schema.define(version: 20130809111130) do

  create_table "comments", force: true do |t|
    t.integer  "user_id"
    t.text     "comment"
    t.integer  "sticker_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["sticker_id", "created_at"], name: "index_comments_on_sticker_id_and_created_at"

  create_table "stickers", force: true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.text     "description"
    t.integer  "number_of_stickers"
    t.integer  "views"
    t.integer  "likes"
    t.float    "price"
    t.string   "file"
    t.string   "screenshot"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "stickers", ["user_id", "created_at"], name: "index_stickers_on_user_id_and_created_at"

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.boolean  "artist"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["username"], name: "index_users_on_username", unique: true

end
