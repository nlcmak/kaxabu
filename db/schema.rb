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

ActiveRecord::Schema.define(version: 20131220016000) do

  create_table "bok8_lok8s", force: true do |t|
    t.string   "pinn1_mia5"
    t.string   "pian1_ho7"
    t.string   "lui7"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bok8_loks", force: true do |t|
    t.string   "pinn1_mia5"
    t.string   "pian1_ho7"
    t.string   "lui7"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "su5_tian2s", force: true do |t|
    t.integer  "bok8_lok8_id"
    t.string   "su5_tian2_pian1_ho7"
    t.string   "kau3_tsai5_piau1_ki3"
    t.string   "phuan1_ing2_lik8_piau1_ki3"
    t.string   "tiong1_bun5"
    t.string   "tai5_gi2"
    t.text     "tsham1_kho2"
    t.string   "tshut4_tshu3"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "su5_tian2s", ["bok8_lok8_id"], name: "index_su5_tian2s_on_bok8_lok8_id"

  create_table "su5_tians", force: true do |t|
    t.integer  "bok8_lok8_id"
    t.string   "su5_tian2_pian1_ho7"
    t.string   "kau3_tsai5_piau1_ki3"
    t.string   "phuan1_ing2_lik8_piau1_ki3"
    t.string   "tiong1_bun5"
    t.string   "tai5_gi2"
    t.text     "tsham1_kho2"
    t.string   "tshut4_tshu3"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "su5_tians", ["bok8_lok8_id"], name: "index_su5_tians_on_bok8_lok8_id"

end
