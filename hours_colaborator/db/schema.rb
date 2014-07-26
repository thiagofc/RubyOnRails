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

ActiveRecord::Schema.define(version: 20140725181844) do

  create_table "colaborators", force: true do |t|
    t.string   "registration"
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "manager_id"
  end

  create_table "hours_registrations", force: true do |t|
    t.string   "date"
    t.string   "entrance1"
    t.string   "exit1"
    t.string   "entrance2"
    t.string   "exit2"
    t.string   "entrance3"
    t.string   "exit3"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "colaborator_id"
  end

  create_table "managers", force: true do |t|
    t.string   "registration"
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
