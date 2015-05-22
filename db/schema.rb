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

ActiveRecord::Schema.define(version: 20150509150501) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "admin_users", force: :cascade do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "demos", force: :cascade do |t|
    t.string   "name"
    t.string   "title"
    t.integer  "price"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "prefecture_type_id"
    t.string   "thumnail"
  end

  create_table "event_sites", force: :cascade do |t|
    t.string   "event_site_code"
    t.string   "prefecture_type_id"
    t.string   "name"
    t.string   "near_station"
    t.string   "access_route"
    t.string   "host_comment"
    t.string   "carpark_type_id"
    t.integer  "capacity"
    t.string   "degrees_of_latitude"
    t.string   "degrees_of_longitude"
    t.string   "privately_owned_type_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "organization_id"
  end

  create_table "events", force: :cascade do |t|
    t.string   "organization_id"
    t.string   "event_site_id"
    t.string   "event_code"
    t.string   "categories_code"
    t.string   "name"
    t.string   "event_comment"
    t.string   "represent_instructor_code"
    t.integer  "entry_fee"
    t.datetime "event_start_datetime"
    t.datetime "event_end_datetime"
    t.datetime "event_post_start_datetime"
    t.datetime "event_post_end_datetime"
    t.integer  "capacity"
    t.integer  "number_of_accepted"
    t.string   "male_available_type_id"
    t.string   "event_type_id"
    t.integer  "target_month_old_from"
    t.integer  "target_month_old_to"
    t.string   "reference_url"
    t.string   "reference_url_name"
    t.string   "belongings"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "item_details", force: :cascade do |t|
    t.string   "shop_code"
    t.string   "item_code"
    t.string   "sku_code"
    t.integer  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "item_headers", force: :cascade do |t|
    t.string   "shop_code"
    t.string   "item_code"
    t.string   "item_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", force: :cascade do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "members", ["email"], name: "index_members_on_email", unique: true
  add_index "members", ["reset_password_token"], name: "index_members_on_reset_password_token", unique: true

  create_table "organizations", force: :cascade do |t|
    t.string   "organization_code"
    t.string   "name"
    t.string   "delegate"
    t.string   "prefecture_type_id"
    t.string   "tel"
    t.string   "email"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

end
