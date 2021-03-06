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

ActiveRecord::Schema.define(version: 20170123210618) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.string   "author"
    t.string   "text"
    t.string   "score"
    t.string   "parent"
    t.string   "post"
    t.string   "sub"
    t.string   "layer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.string   "content"
    t.string   "author"
    t.string   "score"
    t.string   "sub"
    t.string   "imge"
    t.text     "comments",   default: [],              array: true
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.text     "upvoted",         default: [],                                          array: true
    t.text     "downvoted",       default: [],                                          array: true
    t.text     "upvoted_c",       default: [],                                          array: true
    t.text     "downvoted_c",     default: [],                                          array: true
    t.text     "replies",         default: [],                                          array: true
    t.integer  "notifications",   default: 0
    t.string   "background",      default: "../../images/snowyforest.jpg"
    t.string   "main_color",      default: "#3399cc"
    t.string   "snd_color",       default: "#6699ff"
    t.datetime "created_at",                                               null: false
    t.datetime "updated_at",                                               null: false
  end

end
