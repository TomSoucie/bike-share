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

ActiveRecord::Schema.define(version: 20170510205506) do


  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "conditions", force: :cascade do |t|
    t.datetime "date"
    t.integer  "maximum_temperature"
    t.integer  "mean_temperature"
    t.integer  "minimum_temperature"
    t.integer  "mean_visibility"
    t.integer  "mean_wind_speed"
    t.decimal  "precipitation",       precision: 3, scale: 2
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
    t.integer  "zip_code"
    t.integer  "city_id"
    t.integer  "mean_humidity"
  end

  create_table "stations", force: :cascade do |t|
    t.text     "name"
    t.integer  "dock_count"
    t.datetime "install_date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "city_id"
  end

  create_table "subscription_types", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trips", force: :cascade do |t|
    t.integer  "duration"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer  "end_station_id"
    t.integer  "start_station_id"
    t.integer  "subscription_type_id"
    t.integer  "zip_code"
    t.integer  "city_id"
    t.integer  "bike_id"
  end

end
