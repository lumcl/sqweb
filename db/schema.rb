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

ActiveRecord::Schema.define(version: 20170313025241) do

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

  create_table "filerack", id: false, force: :cascade do |t|
    t.string   "uuid",       null: false
    t.string   "parent_id",  null: false
    t.string   "filename",   null: false
    t.string   "document"
    t.string   "remark"
    t.string   "creator"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "create_ip"
  end

  add_index "filerack", ["parent_id"], name: "index_filerack_on_parent_id"
  add_index "filerack", ["uuid"], name: "index_filerack_on_uuid", unique: true

  create_table "flow", id: false, force: :cascade do |t|
    t.string   "uuid",                                    null: false
    t.string   "parent_id",                               null: false
    t.integer  "seq",        precision: 38, default: 1,   null: false
    t.string   "flow_type",                 default: " ", null: false
    t.datetime "notify_at"
    t.string   "sign_by"
    t.datetime "sign_at"
    t.string   "sign_ip"
    t.string   "result"
    t.text     "remark"
    t.string   "assign_id"
    t.string   "assign_by"
    t.datetime "assign_at"
    t.string   "status"
    t.string   "creator"
    t.string   "updater"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  add_index "flow", ["parent_id", "seq"], name: "i_flow_parent_id_seq"
  add_index "flow", ["uuid"], name: "index_flow_on_uuid", unique: true

  create_table "req_ord", id: false, force: :cascade do |t|
    t.string   "uuid",                                      null: false
    t.string   "vtweg",                                     null: false
    t.string   "matkl",                                     null: false
    t.string   "status",                                    null: false
    t.string   "ord_no",                    default: "*",   null: false
    t.datetime "ord_at",                                    null: false
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
    t.string   "matgrp"
  end

  add_index "req_ord", ["matkl", "ord_at"], name: "i_req_ord_matkl_ord_date"
  add_index "req_ord", ["ord_no"], name: "index_req_ord_on_ord_no", unique: true
  add_index "req_ord", ["uuid"], name: "index_req_ord_on_uuid", unique: true

  create_table "req_ord_mat", id: false, force: :cascade do |t|
    t.string   "uuid",                                                              null: false
    t.string   "req_ord_id",                                                        null: false
    t.integer  "seq",            precision: 38,           default: 1,               null: false
    t.string   "matnr",                                   default: "*",             null: false
    t.string   "maktx",                                                             null: false
    t.text     "remark"
    t.string   "status",                                  default: "10",            null: false
    t.string   "meins",                                   default: "EA",            null: false
    t.string   "sap_matnr",                               default: " ",             null: false
    t.decimal  "target_pct",     precision: 15, scale: 6, default: 0.0,             null: false
    t.decimal  "target_prc",     precision: 15, scale: 6, default: 0.0,             null: false
    t.decimal  "vtweg_prc",      precision: 15, scale: 6, default: 0.0,             null: false
    t.decimal  "lowest_prc",     precision: 15, scale: 6, default: 0.0,             null: false
    t.decimal  "domestic_prc",   precision: 15, scale: 6, default: 0.0,             null: false
    t.decimal  "foreign_prc",    precision: 15, scale: 6, default: 0.0,             null: false
    t.string   "ref_matnr"
    t.string   "ref_maktx"
    t.string   "end_customer"
    t.string   "prd_app"
    t.string   "design_no"
    t.datetime "pilot_run_date"
    t.datetime "mass_prod_date"
    t.decimal  "forecast_qty",   precision: 15, scale: 6, default: 0.0,             null: false
    t.string   "forecast_uom"
    t.string   "drawing"
    t.string   "order_plant"
    t.string   "creator",                                 default: "sys@l-e-i.com", null: false
    t.string   "updater",                                 default: "sys@l-e-i.com", null: false
    t.string   "create_ip",                               default: "127.0.0.1",     null: false
    t.string   "update_ip",                               default: "127.0.0.1",     null: false
    t.datetime "created_at",                                                        null: false
    t.datetime "updated_at",                                                        null: false
  end

  add_index "req_ord_mat", ["req_ord_id", "matnr"], name: "i_req_ord_mat_req_ord_id_matnr", unique: true
  add_index "req_ord_mat", ["uuid"], name: "index_req_ord_mat_on_uuid", unique: true

  create_table "req_ord_sup", id: false, force: :cascade do |t|
    t.string   "uuid",         null: false
    t.string   "req_ord_id",   null: false
    t.string   "lifnr",        null: false
    t.string   "sortl"
    t.string   "name1"
    t.string   "weark",        null: false
    t.string   "trading_type"
    t.text     "emails"
    t.datetime "sent_at"
    t.datetime "received_at"
    t.string   "open_by"
    t.datetime "open_at"
    t.string   "open_ip"
    t.string   "reply_by"
    t.datetime "reply_at"
    t.string   "reply_ip"
    t.string   "creator"
    t.string   "updater"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "req_ord_sup", ["lifnr"], name: "index_req_ord_sup_on_lifnr"
  add_index "req_ord_sup", ["req_ord_id"], name: "i_req_ord_sup_req_ord_id"
  add_index "req_ord_sup", ["uuid"], name: "index_req_ord_sup_on_uuid", unique: true

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
