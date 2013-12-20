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

ActiveRecord::Schema.define(version: 20131220035000) do

  create_table "bok8_lok8s", force: true do |t|
    t.string   "篇名"
    t.string   "編號"
    t.string   "類名"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "su5_tian2s", force: true do |t|
    t.integer  "bok8_lok8_id"
    t.string   "辭典編號"
    t.string   "噶哈巫語教材標記法"
    t.string   "噶哈巫語潘永歷標記法"
    t.string   "中文譯解"
    t.string   "臺語譯解"
    t.text     "參考"
    t.string   "出處"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "su5_tian2s", ["bok8_lok8_id"], name: "index_su5_tian2s_on_bok8_lok8_id"

end
