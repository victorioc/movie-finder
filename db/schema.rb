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

ActiveRecord::Schema.define(version: 2018_11_15_181753) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "critics", force: :cascade do |t|
    t.string "name"
    t.text "bio"
    t.string "critic_page"
    t.string "origin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.json "profile"
    t.string "picture"
  end

  create_table "matches", force: :cascade do |t|
    t.integer "critic_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string "url"
    t.decimal "num"
    t.decimal "dec"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "movie_title"
    t.integer "critic_id"
    t.boolean "favorite"
    t.json "movie"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: ""
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "provider"
    t.string "uid"
    t.string "access_token"
    t.string "access_token_secret"
    t.text "timeline"
    t.json "profile"
    t.boolean "initialized"
    t.index ["email"], name: "index_users_on_email"
    t.index ["provider"], name: "index_users_on_provider"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token"
    t.index ["uid"], name: "index_users_on_uid"
  end

end
