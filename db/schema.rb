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

ActiveRecord::Schema.define(version: 20160619043812) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "homeworks", force: :cascade do |t|
    t.string   "question"
    t.string   "answer"
    t.boolean  "completed"
    t.integer  "result"
    t.string   "tutor_comments"
    t.integer  "tutor_profile_id"
    t.integer  "student_profile_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.date     "due_date"
    t.date     "completed_date"
    t.index ["student_profile_id"], name: "index_homeworks_on_student_profile_id", using: :btree
    t.index ["tutor_profile_id"], name: "index_homeworks_on_tutor_profile_id", using: :btree
  end

  create_table "messages", force: :cascade do |t|
    t.integer  "receiver_id"
    t.integer  "sender_id"
    t.string   "subject"
    t.text     "message"
    t.boolean  "read"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["receiver_id"], name: "index_messages_on_receiver_id", using: :btree
    t.index ["sender_id"], name: "index_messages_on_sender_id", using: :btree
  end

  create_table "relationships", force: :cascade do |t|
    t.integer  "tutor_profile_id"
    t.integer  "student_profile_id"
    t.boolean  "tutor_approved"
    t.boolean  "student_approved"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.string   "resource_type"
    t.integer  "resource_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id", using: :btree
    t.index ["name"], name: "index_roles_on_name", using: :btree
  end

  create_table "student_profiles", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "street_number"
    t.string   "street_address"
    t.string   "suburb"
    t.string   "state"
    t.string   "postcode"
    t.string   "country"
    t.date     "dob"
    t.text     "categories"
    t.text     "bio"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "user_id"
    t.string   "profile_image"
    t.index ["user_id"], name: "index_student_profiles_on_user_id", using: :btree
  end

  create_table "task_lists", force: :cascade do |t|
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.hstore   "description", default: {}, null: false
  end

  create_table "tutor_profiles", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "street_number"
    t.string   "street_address"
    t.string   "suburb"
    t.string   "state"
    t.string   "postcode"
    t.string   "country"
    t.date     "dob"
    t.text     "categories"
    t.text     "bio"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "user_id"
    t.string   "profile_image"
    t.index ["user_id"], name: "index_tutor_profiles_on_user_id", using: :btree
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id", using: :btree
  end

  add_foreign_key "homeworks", "student_profiles"
  add_foreign_key "homeworks", "tutor_profiles"
  add_foreign_key "student_profiles", "users"
  add_foreign_key "tutor_profiles", "users"
end
