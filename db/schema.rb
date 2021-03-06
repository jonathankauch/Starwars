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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20160318153831) do

  create_table "pilots", :force => true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.integer  "age"
    t.integer  "grade"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "planet_id"
  end

  add_index "pilots", ["planet_id"], :name => "index_pilots_on_planet_id"

  create_table "pilots_ships", :force => true do |t|
    t.integer  "pilot_id"
    t.integer  "ship_id"
    t.datetime "last_utilisation", :null => false
  end

  create_table "planets", :force => true do |t|
    t.string   "name"
    t.string   "category"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ships", :force => true do |t|
    t.date     "building_date"
    t.string   "reactors"
    t.boolean  "has_hyperspace"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "name"
    t.integer  "planet_id"
  end

  add_index "ships", ["planet_id"], :name => "index_ships_on_planet_id"

end
