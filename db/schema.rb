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

ActiveRecord::Schema.define(:version => 20101221183627) do

  create_table "balls", :force => true do |t|
    t.string   "material"
    t.string   "typekey"
    t.string   "tradename"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gaskets", :force => true do |t|
    t.string   "material"
    t.string   "typekey"
    t.string   "tradename"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "heads", :force => true do |t|
    t.string   "material"
    t.string   "typekey"
    t.string   "tradename"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lines", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "searches", :force => true do |t|
    t.integer  "line_id"
    t.integer  "flow"
    t.integer  "pressure"
    t.integer  "head_id"
    t.integer  "gasket_id"
    t.integer  "ball_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sizes", :force => true do |t|
    t.integer  "flow"
    t.integer  "pressure"
    t.integer  "line_id"
    t.integer  "valvegroup_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "valvegroups", :force => true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "valves", :force => true do |t|
    t.integer  "partnumber"
    t.integer  "head_id"
    t.integer  "gasket_id"
    t.integer  "ball_id"
    t.integer  "valvegroup_id"
    t.boolean  "iskit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
