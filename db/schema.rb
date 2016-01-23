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

ActiveRecord::Schema.define(version: 20160123171014) do

  create_table "clubs", force: true do |t|
    t.string   "name"
    t.string   "zone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "news", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "submissions", force: true do |t|
    t.string   "p1_first_name"
    t.string   "p1_last_name"
    t.float    "p1_handicap"
    t.string   "p1_club"
    t.string   "p1_venue"
    t.integer  "p1_position"
    t.string   "p2_first_name"
    t.string   "p2_last_name"
    t.float    "p2_handicap"
    t.string   "p2_club"
    t.string   "p2_venue"
    t.integer  "p2_position"
    t.string   "p3_first_name"
    t.string   "p3_last_name"
    t.float    "p3_handicap"
    t.string   "p3_club"
    t.string   "p3_venue"
    t.integer  "p3_position"
    t.string   "p4_first_name"
    t.string   "p4_last_name"
    t.float    "p4_handicap"
    t.string   "p4_club"
    t.string   "p4_venue"
    t.integer  "p4_position"
    t.string   "p5_first_name"
    t.string   "p5_last_name"
    t.float    "p5_handicap"
    t.string   "p5_club"
    t.string   "p5_venue"
    t.integer  "p5_position"
    t.string   "p6_first_name"
    t.string   "p6_last_name"
    t.float    "p6_handicap"
    t.string   "p6_club"
    t.string   "p6_venue"
    t.integer  "p6_position"
    t.string   "p7_first_name"
    t.string   "p7_last_name"
    t.float    "p7_handicap"
    t.string   "p7_club"
    t.string   "p7_venue"
    t.integer  "p7_position"
    t.string   "p8_first_name"
    t.string   "p8_last_name"
    t.float    "p8_handicap"
    t.string   "p8_club"
    t.string   "p8_venue"
    t.integer  "p8_position"
    t.string   "g1_first_name"
    t.string   "g1_last_name"
    t.float    "g1_handicap"
    t.string   "g1_club"
    t.string   "g1_venue"
    t.integer  "g1_position"
    t.string   "g2_first_name"
    t.string   "g2_last_name"
    t.float    "g2_handicap"
    t.string   "g2_club"
    t.string   "g2_venue"
    t.integer  "g2_position"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "club",                   default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
