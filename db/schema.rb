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

ActiveRecord::Schema.define(version: 20170214040905) do

  create_table "avl", id: false, force: :cascade do |t|
    t.string   "uuid",                     null: false
    t.string   "werks",                    null: false
    t.string   "lifnr",                    null: false
    t.string   "matkl",                    null: false
    t.string   "email",      default: " "
    t.string   "resp",       default: " "
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "avl", ["uuid"], name: "index_avl_on_uuid", unique: true
  add_index "avl", ["werks", "lifnr", "matkl"], name: "i_avl_werks_lifnr_matkl"

  create_table "burnin", id: false, force: :cascade do |t|
    t.string   "uuid",                                            null: false
    t.string   "qrcode"
    t.string   "aufnr"
    t.string   "pwerk"
    t.string   "burnline"
    t.string   "matnr"
    t.string   "kunnr"
    t.string   "budat"
    t.decimal  "psmng",    precision: 15, scale: 4, default: 0.0
    t.decimal  "btime",    precision: 15, scale: 4, default: 0.0
    t.decimal  "bvolt",    precision: 15, scale: 4, default: 0.0
    t.decimal  "bload",    precision: 15, scale: 4, default: 0.0
    t.decimal  "btemp",    precision: 15, scale: 4, default: 0.0
    t.datetime "strtime"
    t.datetime "endtime"
    t.string   "struser"
    t.string   "enduser"
    t.decimal  "difftime", precision: 15, scale: 4, default: 0.0
    t.string   "result"
    t.string   "packline"
    t.string   "pallet"
    t.datetime "packtime"
    t.string   "packuser"
  end

  add_index "burnin", ["aufnr"], name: "index_burnin_on_aufnr"
  add_index "burnin", ["matnr"], name: "index_burnin_on_matnr"
  add_index "burnin", ["qrcode"], name: "index_burnin_on_qrcode", unique: true
  add_index "burnin", ["uuid"], name: "index_burnin_on_uuid", unique: true

  create_table "req_ord", id: false, force: :cascade do |t|
    t.string   "uuid",                                      null: false
    t.string   "vtweg",                                     null: false
    t.string   "matkl",                                     null: false
    t.string   "status",                                    null: false
    t.string   "ord_no",                                    null: false
    t.string   "ord_date",                                  null: false
    t.datetime "due_at"
    t.string   "ex_curr",                   default: "RMB", null: false
    t.integer  "ex_rate",    precision: 38, default: 1,     null: false
    t.string   "subject"
    t.text     "remark"
    t.string   "req_by",                                    null: false
    t.text     "req_remark"
    t.string   "sent_by"
    t.datetime "sent_at"
    t.string   "sent_ip"
    t.datetime "reply_at"
    t.integer  "sent_cnt",   precision: 38, default: 0,     null: false
    t.integer  "reply_cnt",  precision: 38, default: 0,     null: false
    t.string   "creator"
    t.string   "updater"
    t.string   "approver"
    t.datetime "finish_at"
    t.string   "werkss"
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
  end

  add_index "req_ord", ["matkl", "ord_date"], name: "i_req_ord_matkl_ord_date"
  add_index "req_ord", ["ord_no"], name: "index_req_ord_on_ord_no", unique: true
  add_index "req_ord", ["uuid"], name: "index_req_ord_on_uuid", unique: true

  create_table "systab", id: false, force: :cascade do |t|
    t.string   "objkey",     null: false
    t.string   "objval"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "systab", ["objkey"], name: "index_systab_on_objkey", unique: true

  create_table "users", id: false, force: :cascade do |t|
    t.string   "uuid",                                           null: false
    t.string   "email",                             default: "", null: false
    t.string   "encrypted_password",                default: ""
    t.integer  "sign_in_count",      precision: 38, default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["uuid"], name: "index_users_on_uuid", unique: true

end
