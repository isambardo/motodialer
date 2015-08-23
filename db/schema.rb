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

ActiveRecord::Schema.define(version: 20150823213918) do

  create_table "bikes", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "year"
    t.string   "model"
    t.string   "manufacturer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "set_ups", force: :cascade do |t|
    t.integer  "track_id"
    t.float    "laptime"
    t.float    "rider_weight"
    t.integer  "bike_id"
    t.text     "comment"
    t.integer  "subjective_rating"
    t.string   "conditions"
    t.float    "track_temperature"
    t.float    "ambient_temperature"
    t.float    "rear_tire_pressure"
    t.float    "front_tire_pressure"
    t.string   "rear_tire"
    t.string   "front_tire"
    t.float    "steering_head_angle"
    t.integer  "front_suspension_preload"
    t.integer  "front_suspension_compression"
    t.integer  "front_suspension_damping"
    t.float    "front_suspension_spring_rate"
    t.string   "front_suspension_brand"
    t.integer  "rear_suspension_preload"
    t.integer  "rear_suspension_compression"
    t.integer  "rear_suspension_damping"
    t.float    "rear_suspension_spring_rate"
    t.float    "rear_suspension_static_sag"
    t.float    "rear_suspension_sag"
    t.string   "rear_suspension_brand"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tracks", force: :cascade do |t|
    t.string   "address"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.text     "bio"
    t.string   "avatar"
    t.string   "username"
    t.string   "lastname"
    t.string   "first_name"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
