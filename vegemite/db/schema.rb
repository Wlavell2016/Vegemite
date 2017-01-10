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


ActiveRecord::Schema.define(version: 20170110042942) do

enable_extension "plpgsql"

  create_table "gardens", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "address"
    t.integer  "size"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.string   "image"
    t.integer  "user_id"
    t.decimal  "latitude",     precision: 9, scale: 6
    t.decimal  "longitude",    precision: 9, scale: 6
    t.string   "garden_image"
  end

  create_table "gardens_vegetables", force: :cascade do |t|
    t.integer "garden_id"
    t.integer "vegetable_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "garden_id"
    t.text     "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "startdate"
    t.datetime "enddate"
  end

  create_table "reservations_vegetables", force: :cascade do |t|
    t.integer "reservation_id"
    t.integer "vegetable_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.string   "image"
    t.string   "categoryuser"
    t.string   "avatar"
    t.decimal  "latitude",        precision: 9, scale: 6
    t.decimal  "longitude",       precision: 9, scale: 6
  end

  create_table "vegetables", force: :cascade do |t|
    t.string   "name"
    t.string   "sow_period"
    t.string   "plant_out_period"
    t.string   "image"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "harvest"
  end

end
