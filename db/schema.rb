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

ActiveRecord::Schema.define(version: 20151222212100) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.float    "lat"
    t.float    "lng"
    t.string   "location"
    t.datetime "date"
  end

  create_table "air_quality_observations", force: :cascade do |t|
    t.integer  "aqi"
    t.string   "category"
    t.datetime "date_observed"
    t.integer  "hour_observed"
    t.float    "lat"
    t.string   "local_time_zone"
    t.float    "lng"
    t.string   "parameter_name"
    t.string   "reporting_area"
    t.string   "state_code"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "zip_code"
  end

end
