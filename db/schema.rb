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

ActiveRecord::Schema.define(version: 20160925125828) do

  create_table "attendants", force: :cascade do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "email"
    t.string   "phone"
    t.string   "university"
    t.string   "ticket",             default: "1"
    t.string   "payment",            default: "1"
    t.string   "questions"
    t.string   "diet",               default: "1"
    t.string   "roommate"
    t.string   "invoice_university"
    t.string   "invoice_address"
    t.string   "invoice_nip"
    t.boolean  "sms",                default: false
    t.boolean  "agree",              default: false
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string   "question"
    t.integer  "attendant_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["attendant_id"], name: "index_questions_on_attendant_id"
  end

end
