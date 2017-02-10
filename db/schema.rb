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

ActiveRecord::Schema.define(version: 20160727110951) do

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

  create_table "ce13058", id: false, force: :cascade do |t|
    t.string "artnr", limit: 162, null: false
    t.string "budat", limit: 72
  end

  create_table "delpos", id: false, force: :cascade do |t|
    t.string  "werks", limit: 36,                           null: false
    t.string  "matnr", limit: 162,                          null: false
    t.string  "keycn", limit: 90,                           null: false
    t.string  "dat00", limit: 72,                           null: false
    t.string  "delb0", limit: 54,                           null: false
    t.string  "extra", limit: 360,                          null: false
    t.string  "aussl", limit: 18,                           null: false
    t.string  "auskt", limit: 18,                           null: false
    t.decimal "mng01",             precision: 13, scale: 3, null: false
    t.decimal "mng02",             precision: 13, scale: 3, null: false
    t.string  "lifnr", limit: 90,                           null: false
    t.string  "sortl", limit: 90
    t.string  "lgort", limit: 36,                           null: false
    t.string  "matkl", limit: 81,                           null: false
    t.string  "maktx", limit: 360,                          null: false
    t.string  "ekgrp", limit: 27,                           null: false
    t.decimal "bstrf",             precision: 13, scale: 3, null: false
    t.integer "plifz", limit: 3,   precision: 3,            null: false
    t.string  "ebeln", limit: 40
    t.string  "ebelp", limit: 60
    t.string  "bedat", limit: 72,                           null: false
  end

  create_table "dltpos", id: false, force: :cascade do |t|
    t.string  "werks", limit: 36,                           null: false
    t.string  "matnr", limit: 162,                          null: false
    t.string  "keycn", limit: 90,                           null: false
    t.string  "dat00", limit: 72,                           null: false
    t.string  "delb0", limit: 54,                           null: false
    t.string  "extra", limit: 360,                          null: false
    t.string  "aussl", limit: 18,                           null: false
    t.string  "auskt", limit: 18,                           null: false
    t.decimal "mng01",             precision: 13, scale: 3, null: false
    t.decimal "mng02",             precision: 13, scale: 3, null: false
    t.string  "lifnr", limit: 90,                           null: false
    t.string  "sortl", limit: 90
    t.string  "lgort", limit: 36,                           null: false
    t.string  "matkl", limit: 81,                           null: false
    t.string  "maktx", limit: 360,                          null: false
    t.string  "ekgrp", limit: 27,                           null: false
    t.decimal "bstrf",             precision: 13, scale: 3, null: false
    t.integer "plifz", limit: 3,   precision: 3,            null: false
    t.string  "ebeln", limit: 40
    t.string  "ebelp", limit: 60
    t.string  "bedat", limit: 72,                           null: false
    t.string  "meins", limit: 27,                           null: false
  end

  create_table "ekpa", id: false, force: :cascade do |t|
    t.string "ebeln", limit: 90, null: false
    t.string "parvw", limit: 18, null: false
  end

  add_index "ekpa", ["ebeln"], name: "ekpa_a"

  create_table "fc2014", id: false, force: :cascade do |t|
    t.string  "vrgar", limit: 9,   null: false
    t.string  "perbl", limit: 63,  null: false
    t.string  "budat", limit: 1
    t.string  "belnr", limit: 1
    t.string  "gjahr", limit: 1
    t.string  "artnr", limit: 162, null: false
    t.string  "bukrs", limit: 1
    t.string  "werks", limit: 27
    t.string  "vtweg", limit: 18,  null: false
    t.string  "kstar", limit: 1
    t.string  "ktext", limit: 1
    t.string  "prctr", limit: 90,  null: false
    t.string  "matkl", limit: 81
    t.string  "kaufn", limit: 1
    t.string  "kdpos", limit: 1
    t.string  "kndnr", limit: 90,  null: false
    t.string  "sortl", limit: 90
    t.string  "name1", limit: 315
    t.string  "csgrp", limit: 315
    t.string  "armgr", limit: 450
    t.string  "srep2", limit: 450
    t.string  "brand", limit: 360
    t.string  "ewbez", limit: 180
    t.decimal "fvq10"
    t.decimal "fvr10"
    t.decimal "fvs21"
    t.decimal "fvs22"
    t.decimal "fvs23"
    t.decimal "fvs24"
    t.decimal "fvs25"
    t.decimal "fvc11"
    t.decimal "fvc52"
  end

  create_table "fc2015", id: false, force: :cascade do |t|
    t.string  "vrgar", limit: 9,   null: false
    t.string  "perbl", limit: 63,  null: false
    t.string  "budat", limit: 1
    t.string  "belnr", limit: 1
    t.string  "gjahr", limit: 1
    t.string  "artnr", limit: 162, null: false
    t.string  "bukrs", limit: 1
    t.string  "werks", limit: 1
    t.string  "vtweg", limit: 18,  null: false
    t.string  "kstar", limit: 1
    t.string  "ktext", limit: 1
    t.string  "prctr", limit: 90,  null: false
    t.string  "matkl", limit: 81
    t.string  "kaufn", limit: 1
    t.string  "kdpos", limit: 1
    t.string  "kndnr", limit: 90,  null: false
    t.string  "sortl", limit: 90
    t.string  "name1", limit: 315
    t.string  "csgrp", limit: 315
    t.string  "armgr", limit: 450
    t.string  "srep2", limit: 450
    t.string  "brand", limit: 360
    t.string  "ewbez", limit: 180
    t.decimal "fvq10"
    t.decimal "fvr10"
    t.decimal "fvs21"
    t.decimal "fvs22"
    t.decimal "fvs23"
    t.decimal "fvs24"
    t.decimal "fvs25"
    t.decimal "fvc11"
    t.decimal "fvc52"
  end

  create_table "fc2017", id: false, force: :cascade do |t|
    t.string  "vrgar", limit: 9,   null: false
    t.string  "perbl", limit: 63,  null: false
    t.string  "budat", limit: 1
    t.string  "belnr", limit: 1
    t.string  "gjahr", limit: 1
    t.string  "artnr", limit: 162, null: false
    t.string  "bukrs", limit: 1
    t.string  "werks", limit: 36,  null: false
    t.string  "vtweg", limit: 18,  null: false
    t.string  "kstar", limit: 1
    t.string  "ktext", limit: 1
    t.string  "prctr", limit: 90
    t.string  "matkl", limit: 81
    t.string  "kaufn", limit: 1
    t.string  "kdpos", limit: 1
    t.string  "kndnr", limit: 90,  null: false
    t.string  "sortl", limit: 90
    t.string  "name1", limit: 315
    t.string  "csgrp", limit: 315
    t.string  "armgr", limit: 450
    t.string  "srep2", limit: 450
    t.string  "brand", limit: 360
    t.string  "ewbez", limit: 180
    t.decimal "fvq10"
    t.decimal "fvr10"
    t.decimal "fvs21"
    t.decimal "fvs22"
    t.decimal "fvs23"
    t.decimal "fvs24"
    t.decimal "fvs25"
    t.decimal "fvc11"
    t.decimal "fvc52"
    t.decimal "fcom"
  end

  create_table "gw_charg_lifnr", id: false, force: :cascade do |t|
    t.string "matnr", limit: 162, null: false
    t.string "charg", limit: 90,  null: false
    t.string "lifnr", limit: 90
    t.string "name1", limit: 315
    t.string "sortl", limit: 90
  end

  add_index "gw_charg_lifnr", ["matnr", "charg"], name: "gw_charg_lifnr_id01"

  create_table "gw_lifnr_v3", id: false, force: :cascade do |t|
    t.string "lifnr", limit: 90, null: false
  end

  create_table "gw_mara", id: false, force: :cascade do |t|
    t.string  "matnr", limit: 162,                          null: false
    t.string  "maktx", limit: 360
    t.string  "matkl", limit: 81,                           null: false
    t.string  "wgbez", limit: 180
    t.string  "gewei", limit: 27,                           null: false
    t.string  "hrktx", limit: 360
    t.string  "meins", limit: 27,                           null: false
    t.decimal "ntgew",             precision: 13, scale: 3, null: false
    t.string  "cbtyp", limit: 9
    t.string  "cbseq", limit: 36
    t.decimal "dlrat",             precision: 10, scale: 6
    t.string  "hstxt", limit: 360
    t.string  "detxt", limit: 180
  end

  create_table "gw_mara_new", id: false, force: :cascade do |t|
    t.string  "matnr", limit: 162,                          null: false
    t.string  "maktx", limit: 360
    t.string  "matkl", limit: 81,                           null: false
    t.string  "wgbez", limit: 180
    t.string  "gewei", limit: 27,                           null: false
    t.string  "hrktx", limit: 360
    t.string  "meins", limit: 27,                           null: false
    t.decimal "ntgew",             precision: 13, scale: 3, null: false
    t.string  "cbtyp", limit: 9
    t.string  "cbseq", limit: 36
    t.decimal "dlrat",             precision: 10, scale: 6
    t.string  "hstxt", limit: 360
    t.string  "detxt", limit: 180
  end

  create_table "gw_mat_v3", id: false, force: :cascade do |t|
    t.string  "lifnr", limit: 90,  null: false
    t.string  "matnr", limit: 162, null: false
    t.decimal "menge"
    t.string  "erp",   limit: 3
  end

  create_table "gw_mseg_100730_130729", id: false, force: :cascade do |t|
    t.string  "matnr", limit: 162, null: false
    t.string  "bwart", limit: 27,  null: false
    t.string  "sobkz", limit: 9,   null: false
    t.string  "kzbew", limit: 9,   null: false
    t.string  "kzzug", limit: 9,   null: false
    t.string  "kzvbr", limit: 9,   null: false
    t.string  "btext", limit: 180
    t.decimal "qty"
    t.decimal "amt"
    t.string  "erp",   limit: 3
  end

  create_table "gw_mseg_dtls_100730_130729", id: false, force: :cascade do |t|
    t.string  "matnr", limit: 162, null: false
    t.string  "bwart", limit: 27,  null: false
    t.string  "sobkz", limit: 9,   null: false
    t.string  "kzbew", limit: 9,   null: false
    t.string  "kzzug", limit: 9,   null: false
    t.string  "kzvbr", limit: 9,   null: false
    t.string  "btext", limit: 180
    t.decimal "qty"
    t.decimal "amt"
    t.string  "erp",   limit: 3
    t.string  "budat", limit: 72,  null: false
    t.string  "charg", limit: 90,  null: false
    t.string  "lifnr", limit: nil
  end

  create_table "knvp2013", id: false, force: :cascade do |t|
    t.string "kunnr", limit: 90,  null: false
    t.string "armgr", limit: 450
    t.string "srep2", limit: 450
  end

  create_table "kpi_ckis_ope", id: false, force: :cascade do |t|
    t.string  "kyear",   limit: 4
    t.string  "mandt",   limit: 27,                           null: false
    t.string  "bzobj",   limit: 9,                            null: false
    t.string  "kalnr",   limit: 108,                          null: false
    t.string  "kadky",   limit: 72,                           null: false
    t.string  "kalka",   limit: 18,                           null: false
    t.string  "tvers",   limit: 18,                           null: false
    t.string  "bwvar",   limit: 27,                           null: false
    t.string  "kkzma",   limit: 9,                            null: false
    t.string  "werks",   limit: 36,                           null: false
    t.string  "matnr",   limit: 162,                          null: false
    t.decimal "losgr",               precision: 13, scale: 3, null: false
    t.string  "vornr",   limit: 36,                           null: false
    t.decimal "menge",               precision: 15, scale: 3, null: false
    t.string  "meeht",   limit: 27,                           null: false
    t.string  "kostl",   limit: 90,                           null: false
    t.string  "lstar",   limit: 54,                           null: false
    t.string  "arbid",   limit: 72,                           null: false
    t.string  "arbpl",   limit: 72
    t.string  "ktext",   limit: 360,                          null: false
    t.string  "veran",   limit: 27
    t.string  "spv/mgr", limit: 360
  end

  create_table "kpi_ckis_ope_2015", id: false, force: :cascade do |t|
    t.string  "kyear",   limit: 4
    t.string  "mandt",   limit: 27,                           null: false
    t.string  "bzobj",   limit: 9,                            null: false
    t.string  "kalnr",   limit: 108,                          null: false
    t.string  "kadky",   limit: 72,                           null: false
    t.string  "kalka",   limit: 18,                           null: false
    t.string  "tvers",   limit: 18,                           null: false
    t.string  "bwvar",   limit: 27,                           null: false
    t.string  "kkzma",   limit: 9,                            null: false
    t.string  "werks",   limit: 36,                           null: false
    t.string  "matnr",   limit: 162,                          null: false
    t.decimal "losgr",               precision: 13, scale: 3, null: false
    t.string  "vornr",   limit: 36,                           null: false
    t.decimal "menge",               precision: 15, scale: 3, null: false
    t.string  "meeht",   limit: 27,                           null: false
    t.string  "kostl",   limit: 90,                           null: false
    t.string  "lstar",   limit: 54,                           null: false
    t.string  "arbid",   limit: 72,                           null: false
    t.string  "arbpl",   limit: 72
    t.string  "ktext",   limit: 360,                          null: false
    t.string  "veran",   limit: 27
    t.string  "spv/mgr", limit: 360
  end

  create_table "kpi_ckis_ope_2016", id: false, force: :cascade do |t|
    t.string  "kyear",   limit: 4
    t.string  "mandt",   limit: 27,                           null: false
    t.string  "bzobj",   limit: 9,                            null: false
    t.string  "kalnr",   limit: 108,                          null: false
    t.string  "kadky",   limit: 72,                           null: false
    t.string  "kalka",   limit: 18,                           null: false
    t.string  "tvers",   limit: 18,                           null: false
    t.string  "bwvar",   limit: 27,                           null: false
    t.string  "kkzma",   limit: 9,                            null: false
    t.string  "werks",   limit: 36,                           null: false
    t.string  "matnr",   limit: 162,                          null: false
    t.decimal "losgr",               precision: 13, scale: 3, null: false
    t.string  "vornr",   limit: 36,                           null: false
    t.decimal "menge",               precision: 15, scale: 3, null: false
    t.string  "meeht",   limit: 27,                           null: false
    t.string  "kostl",   limit: 90,                           null: false
    t.string  "lstar",   limit: 54,                           null: false
    t.string  "arbid",   limit: 72,                           null: false
    t.string  "arbpl",   limit: 72
    t.string  "ktext",   limit: 360,                          null: false
    t.string  "veran",   limit: 27
    t.string  "spv/mgr", limit: 360
  end

  create_table "kpi_ckis_ope_tmp", id: false, force: :cascade do |t|
    t.string  "kyear",   limit: 4
    t.string  "mandt",   limit: 27,                           null: false
    t.string  "bzobj",   limit: 9,                            null: false
    t.string  "kalnr",   limit: 108,                          null: false
    t.string  "kadky",   limit: 72,                           null: false
    t.string  "kalka",   limit: 18,                           null: false
    t.string  "tvers",   limit: 18,                           null: false
    t.string  "bwvar",   limit: 27,                           null: false
    t.string  "kkzma",   limit: 9,                            null: false
    t.string  "werks",   limit: 36,                           null: false
    t.string  "matnr",   limit: 162,                          null: false
    t.decimal "losgr",               precision: 13, scale: 3, null: false
    t.string  "vornr",   limit: 36,                           null: false
    t.decimal "menge",               precision: 15, scale: 3, null: false
    t.string  "meeht",   limit: 27,                           null: false
    t.string  "kostl",   limit: 90,                           null: false
    t.string  "lstar",   limit: 54,                           null: false
    t.string  "arbid",   limit: 72,                           null: false
    t.string  "arbpl",   limit: 72
    t.string  "ktext",   limit: 360,                          null: false
    t.string  "veran",   limit: 27
    t.string  "spv/mgr", limit: 360
  end

  create_table "kpi_keko", id: false, force: :cascade do |t|
    t.string  "kyear", limit: 4
    t.string  "mandt", limit: 27,                           null: false
    t.string  "bzobj", limit: 9,                            null: false
    t.string  "kalnr", limit: 108,                          null: false
    t.string  "kadky", limit: 72,                           null: false
    t.string  "kalka", limit: 18,                           null: false
    t.string  "tvers", limit: 18,                           null: false
    t.string  "bwvar", limit: 27,                           null: false
    t.string  "kkzma", limit: 9,                            null: false
    t.string  "werks", limit: 36,                           null: false
    t.string  "matnr", limit: 162,                          null: false
    t.decimal "losgr",             precision: 13, scale: 3, null: false
  end

  create_table "kpi_keko_2015", id: false, force: :cascade do |t|
    t.string  "kyear", limit: 4
    t.string  "mandt", limit: 27,                           null: false
    t.string  "bzobj", limit: 9,                            null: false
    t.string  "kalnr", limit: 108,                          null: false
    t.string  "kadky", limit: 72,                           null: false
    t.string  "kalka", limit: 18,                           null: false
    t.string  "tvers", limit: 18,                           null: false
    t.string  "bwvar", limit: 27,                           null: false
    t.string  "kkzma", limit: 9,                            null: false
    t.string  "werks", limit: 36,                           null: false
    t.string  "matnr", limit: 162,                          null: false
    t.decimal "losgr",             precision: 13, scale: 3, null: false
  end

  create_table "kpi_keko_2016", id: false, force: :cascade do |t|
    t.string  "kyear", limit: 4
    t.string  "mandt", limit: 27,                           null: false
    t.string  "bzobj", limit: 9,                            null: false
    t.string  "kalnr", limit: 108,                          null: false
    t.string  "kadky", limit: 72,                           null: false
    t.string  "kalka", limit: 18,                           null: false
    t.string  "tvers", limit: 18,                           null: false
    t.string  "bwvar", limit: 27,                           null: false
    t.string  "kkzma", limit: 9,                            null: false
    t.string  "werks", limit: 36,                           null: false
    t.string  "matnr", limit: 162,                          null: false
    t.decimal "losgr",             precision: 13, scale: 3, null: false
  end

  create_table "kpi_keko_tmp", id: false, force: :cascade do |t|
    t.string  "kyear", limit: 4
    t.string  "mandt", limit: 27,                           null: false
    t.string  "bzobj", limit: 9,                            null: false
    t.string  "kalnr", limit: 108,                          null: false
    t.string  "kadky", limit: 72,                           null: false
    t.string  "kalka", limit: 18,                           null: false
    t.string  "tvers", limit: 18,                           null: false
    t.string  "bwvar", limit: 27,                           null: false
    t.string  "kkzma", limit: 9,                            null: false
    t.string  "werks", limit: 36,                           null: false
    t.string  "matnr", limit: 162,                          null: false
    t.decimal "losgr",             precision: 13, scale: 3, null: false
  end

  create_table "kpi_mo_hrs", id: false, force: :cascade do |t|
    t.string  "gltri",       limit: 72,                           null: false
    t.string  "aufnr",       limit: 108,                          null: false
    t.string  "matnr",       limit: 162,                          null: false
    t.string  "werks",       limit: 36,                           null: false
    t.string  "vornr",       limit: 36,                           null: false
    t.string  "work_center", limit: 72
    t.string  "rueck",       limit: 90,                           null: false
    t.string  "rmzhl",       limit: 72,                           null: false
    t.decimal "wemng",                   precision: 13, scale: 3, null: false
    t.decimal "rpthrs"
    t.string  "arbid",       limit: 72,                           null: false
    t.string  "line",        limit: 72
    t.string  "veran",       limit: 27
    t.string  "spv/mgr",     limit: 360
  end

  create_table "kpi_mo_hrs_2015", id: false, force: :cascade do |t|
    t.string  "gltri",       limit: 72,                           null: false
    t.string  "aufnr",       limit: 108,                          null: false
    t.string  "matnr",       limit: 162,                          null: false
    t.string  "werks",       limit: 36,                           null: false
    t.string  "vornr",       limit: 36,                           null: false
    t.string  "work_center", limit: 72
    t.string  "rueck",       limit: 90,                           null: false
    t.string  "rmzhl",       limit: 72,                           null: false
    t.decimal "wemng",                   precision: 13, scale: 3, null: false
    t.decimal "rpthrs"
    t.string  "arbid",       limit: 72,                           null: false
    t.string  "line",        limit: 72
    t.string  "veran",       limit: 27
    t.string  "spv/mgr",     limit: 360
  end

  create_table "lfa1", id: false, force: :cascade do |t|
    t.string  "mandt",           limit: 27,                            null: false
    t.string  "lifnr",           limit: 90,                            null: false
    t.string  "land1",           limit: 27,                            null: false
    t.string  "name1",           limit: 315,                           null: false
    t.string  "name2",           limit: 315,                           null: false
    t.string  "name3",           limit: 315,                           null: false
    t.string  "name4",           limit: 315,                           null: false
    t.string  "ort01",           limit: 315,                           null: false
    t.string  "ort02",           limit: 315,                           null: false
    t.string  "pfach",           limit: 90,                            null: false
    t.string  "pstl2",           limit: 90,                            null: false
    t.string  "pstlz",           limit: 90,                            null: false
    t.string  "regio",           limit: 27,                            null: false
    t.string  "sortl",           limit: 90,                            null: false
    t.string  "stras",           limit: 315,                           null: false
    t.string  "adrnr",           limit: 90,                            null: false
    t.string  "mcod1",           limit: 225,                           null: false
    t.string  "mcod2",           limit: 225,                           null: false
    t.string  "mcod3",           limit: 225,                           null: false
    t.string  "anred",           limit: 135,                           null: false
    t.string  "bahns",           limit: 225,                           null: false
    t.string  "bbbnr",           limit: 63,                            null: false
    t.string  "bbsnr",           limit: 45,                            null: false
    t.string  "begru",           limit: 36,                            null: false
    t.string  "brsch",           limit: 36,                            null: false
    t.string  "bubkz",           limit: 9,                             null: false
    t.string  "datlt",           limit: 126,                           null: false
    t.string  "dtams",           limit: 9,                             null: false
    t.string  "dtaws",           limit: 18,                            null: false
    t.string  "erdat",           limit: 72,                            null: false
    t.string  "ernam",           limit: 108,                           null: false
    t.string  "esrnr",           limit: 99,                            null: false
    t.string  "konzs",           limit: 90,                            null: false
    t.string  "ktokk",           limit: 36,                            null: false
    t.string  "kunnr",           limit: 90,                            null: false
    t.string  "lnrza",           limit: 90,                            null: false
    t.string  "loevm",           limit: 9,                             null: false
    t.string  "sperr",           limit: 9,                             null: false
    t.string  "sperm",           limit: 9,                             null: false
    t.string  "spras",           limit: 9,                             null: false
    t.string  "stcd1",           limit: 144,                           null: false
    t.string  "stcd2",           limit: 99,                            null: false
    t.string  "stkza",           limit: 9,                             null: false
    t.string  "stkzu",           limit: 9,                             null: false
    t.string  "telbx",           limit: 135,                           null: false
    t.string  "telf1",           limit: 144,                           null: false
    t.string  "telf2",           limit: 144,                           null: false
    t.string  "telfx",           limit: 279,                           null: false
    t.string  "teltx",           limit: 270,                           null: false
    t.string  "telx1",           limit: 270,                           null: false
    t.string  "xcpdk",           limit: 9,                             null: false
    t.string  "xzemp",           limit: 9,                             null: false
    t.string  "vbund",           limit: 54,                            null: false
    t.string  "fiskn",           limit: 90,                            null: false
    t.string  "stceg",           limit: 180,                           null: false
    t.string  "stkzn",           limit: 9,                             null: false
    t.string  "sperq",           limit: 18,                            null: false
    t.string  "gbort",           limit: 225,                           null: false
    t.string  "gbdat",           limit: 72,                            null: false
    t.string  "sexkz",           limit: 9,                             null: false
    t.string  "kraus",           limit: 99,                            null: false
    t.string  "revdb",           limit: 72,                            null: false
    t.string  "qssys",           limit: 36,                            null: false
    t.string  "ktock",           limit: 36,                            null: false
    t.string  "pfort",           limit: 315,                           null: false
    t.string  "werks",           limit: 36,                            null: false
    t.string  "ltsna",           limit: 9,                             null: false
    t.string  "werkr",           limit: 9,                             null: false
    t.string  "plkal",           limit: 18,                            null: false
    t.string  "duefl",           limit: 9,                             null: false
    t.string  "txjcd",           limit: 135,                           null: false
    t.string  "sperz",           limit: 9,                             null: false
    t.string  "scacd",           limit: 36,                            null: false
    t.string  "sfrgr",           limit: 36,                            null: false
    t.string  "lzone",           limit: 90,                            null: false
    t.string  "xlfza",           limit: 9,                             null: false
    t.string  "dlgrp",           limit: 36,                            null: false
    t.string  "fityp",           limit: 18,                            null: false
    t.string  "stcdt",           limit: 18,                            null: false
    t.string  "regss",           limit: 9,                             null: false
    t.string  "actss",           limit: 27,                            null: false
    t.string  "stcd3",           limit: 162,                           null: false
    t.string  "stcd4",           limit: 162,                           null: false
    t.string  "ipisp",           limit: 9,                             null: false
    t.string  "taxbs",           limit: 9,                             null: false
    t.string  "profs",           limit: 270,                           null: false
    t.string  "stgdl",           limit: 18,                            null: false
    t.string  "emnfr",           limit: 90,                            null: false
    t.string  "lfurl",           limit: 1188,                          null: false
    t.string  "j_1kfrepre",      limit: 90,                            null: false
    t.string  "j_1kftbus",       limit: 270,                           null: false
    t.string  "j_1kftind",       limit: 270,                           null: false
    t.string  "confs",           limit: 9,                             null: false
    t.string  "updat",           limit: 72,                            null: false
    t.string  "uptim",           limit: 54,                            null: false
    t.string  "nodel",           limit: 9,                             null: false
    t.string  "qssysdat",        limit: 72,                            null: false
    t.string  "podkzb",          limit: 9,                             null: false
    t.string  "fisku",           limit: 90,                            null: false
    t.string  "stenr",           limit: 162,                           null: false
    t.string  "carrier_conf",    limit: 9,                             null: false
    t.decimal "j_sc_capital",                 precision: 15, scale: 2, null: false
    t.string  "j_sc_currency",   limit: 45,                            null: false
    t.string  "alc",             limit: 72,                            null: false
    t.string  "pmt_office",      limit: 45,                            null: false
    t.string  "psofg",           limit: 90,                            null: false
    t.string  "psois",           limit: 180,                           null: false
    t.string  "pson1",           limit: 315,                           null: false
    t.string  "pson2",           limit: 315,                           null: false
    t.string  "pson3",           limit: 315,                           null: false
    t.string  "psovn",           limit: 315,                           null: false
    t.string  "psotl",           limit: 180,                           null: false
    t.string  "psohs",           limit: 54,                            null: false
    t.string  "psost",           limit: 252,                           null: false
    t.string  "transport_chain", limit: 90,                            null: false
    t.integer "staging_time",    limit: 3,    precision: 3,            null: false
    t.string  "scheduling_type", limit: 9,                             null: false
    t.string  "submi_relevant",  limit: 9,                             null: false
    t.string  "ppa_relevant",    limit: 9
  end

  create_table "lifnr_addr", id: false, force: :cascade do |t|
    t.string "lifnr",      limit: 90,   null: false
    t.string "smtp_addr",  limit: 2169
    t.string "remark",     limit: 450
    t.string "telnr_long", limit: 270
    t.string "sortl",      limit: 90,   null: false
    t.string "name1",      limit: 360,  null: false
    t.string "name2",      limit: 360,  null: false
    t.string "city1",      limit: 360,  null: false
    t.string "post_code1", limit: 90,   null: false
    t.string "street",     limit: 540,  null: false
    t.string "tel_number", limit: 270,  null: false
    t.string "fax_number", limit: 270,  null: false
  end

  create_table "lipst", id: false, force: :cascade do |t|
    t.string  "mandt",            limit: 27,                           null: false
    t.string  "vbeln",            limit: 90,                           null: false
    t.string  "posnr",            limit: 54,                           null: false
    t.string  "pstyv",            limit: 36,                           null: false
    t.string  "ernam",            limit: 108,                          null: false
    t.string  "erzet",            limit: 54,                           null: false
    t.string  "erdat",            limit: 72,                           null: false
    t.string  "matnr",            limit: 162,                          null: false
    t.string  "matwa",            limit: 162,                          null: false
    t.string  "matkl",            limit: 81,                           null: false
    t.string  "werks",            limit: 36,                           null: false
    t.string  "lgort",            limit: 36,                           null: false
    t.string  "charg",            limit: 90,                           null: false
    t.string  "lichn",            limit: 135,                          null: false
    t.string  "kdmat",            limit: 315,                          null: false
    t.string  "prodh",            limit: 162,                          null: false
    t.decimal "lfimg",                        precision: 13, scale: 3, null: false
    t.string  "meins",            limit: 27,                           null: false
    t.string  "vrkme",            limit: 27,                           null: false
    t.integer "umvkz",            limit: 5,   precision: 5,            null: false
    t.integer "umvkn",            limit: 5,   precision: 5,            null: false
    t.decimal "ntgew",                        precision: 15, scale: 3, null: false
    t.decimal "brgew",                        precision: 15, scale: 3, null: false
    t.string  "gewei",            limit: 27,                           null: false
    t.decimal "volum",                        precision: 15, scale: 3, null: false
    t.string  "voleh",            limit: 27,                           null: false
    t.string  "kztlf",            limit: 9,                            null: false
    t.string  "uebtk",            limit: 9,                            null: false
    t.decimal "uebto",                        precision: 3,  scale: 1, null: false
    t.decimal "untto",                        precision: 3,  scale: 1, null: false
    t.string  "chspl",            limit: 9,                            null: false
    t.string  "faksp",            limit: 18,                           null: false
    t.string  "mbdat",            limit: 72,                           null: false
    t.decimal "lgmng",                        precision: 13, scale: 3, null: false
    t.string  "arktx",            limit: 360,                          null: false
    t.string  "lgpbe",            limit: 90,                           null: false
    t.string  "vbelv",            limit: 90,                           null: false
    t.string  "posnv",            limit: 54,                           null: false
    t.string  "vbtyv",            limit: 9,                            null: false
    t.string  "vgsys",            limit: 90,                           null: false
    t.string  "vgbel",            limit: 90,                           null: false
    t.string  "vgpos",            limit: 54,                           null: false
    t.string  "upflu",            limit: 9,                            null: false
    t.string  "uepos",            limit: 54,                           null: false
    t.string  "fkrel",            limit: 9,                            null: false
    t.string  "ladgr",            limit: 36,                           null: false
    t.string  "tragr",            limit: 36,                           null: false
    t.string  "komkz",            limit: 9,                            null: false
    t.string  "lgnum",            limit: 27,                           null: false
    t.string  "lispl",            limit: 9,                            null: false
    t.string  "lgtyp",            limit: 27,                           null: false
    t.string  "lgpla",            limit: 90,                           null: false
    t.string  "bwtex",            limit: 9,                            null: false
    t.string  "bwart",            limit: 27,                           null: false
    t.string  "bwlvs",            limit: 27,                           null: false
    t.string  "kzdlg",            limit: 9,                            null: false
    t.string  "bdart",            limit: 18,                           null: false
    t.string  "plart",            limit: 9,                            null: false
    t.string  "mtart",            limit: 36,                           null: false
    t.string  "xchpf",            limit: 9,                            null: false
    t.string  "xchar",            limit: 9,                            null: false
    t.string  "vgref",            limit: 9,                            null: false
    t.string  "posar",            limit: 9,                            null: false
    t.string  "bwtar",            limit: 90,                           null: false
    t.string  "sumbd",            limit: 9,                            null: false
    t.string  "mtvfp",            limit: 18,                           null: false
    t.string  "eannr",            limit: 117,                          null: false
    t.string  "gsber",            limit: 36,                           null: false
    t.string  "vkbur",            limit: 36,                           null: false
    t.string  "vkgrp",            limit: 27,                           null: false
    t.string  "vtweg",            limit: 18,                           null: false
    t.string  "spart",            limit: 18,                           null: false
    t.string  "grkor",            limit: 27,                           null: false
    t.string  "fmeng",            limit: 9,                            null: false
    t.boolean "antlf",            limit: nil,                          null: false
    t.decimal "vbeaf",                        precision: 5,  scale: 2, null: false
    t.decimal "vbeav",                        precision: 5,  scale: 2, null: false
    t.string  "stafo",            limit: 54,                           null: false
    t.decimal "wavwr",                        precision: 13, scale: 2, null: false
    t.decimal "kzwi1",                        precision: 13, scale: 2, null: false
    t.decimal "kzwi2",                        precision: 13, scale: 2, null: false
    t.decimal "kzwi3",                        precision: 13, scale: 2, null: false
    t.decimal "kzwi4",                        precision: 13, scale: 2, null: false
    t.decimal "kzwi5",                        precision: 13, scale: 2, null: false
    t.decimal "kzwi6",                        precision: 13, scale: 2, null: false
    t.string  "sobkz",            limit: 9,                            null: false
    t.string  "aedat",            limit: 72,                           null: false
    t.string  "ean11",            limit: 162,                          null: false
    t.string  "kvgr1",            limit: 27,                           null: false
    t.string  "kvgr2",            limit: 27,                           null: false
    t.string  "kvgr3",            limit: 27,                           null: false
    t.string  "kvgr4",            limit: 27,                           null: false
    t.string  "kvgr5",            limit: 27,                           null: false
    t.string  "mvgr1",            limit: 27,                           null: false
    t.string  "mvgr2",            limit: 27,                           null: false
    t.string  "mvgr3",            limit: 27,                           null: false
    t.string  "mvgr4",            limit: 27,                           null: false
    t.string  "mvgr5",            limit: 27,                           null: false
    t.string  "vpzuo",            limit: 9,                            null: false
    t.string  "vgtyp",            limit: 9,                            null: false
    t.string  "rfvgtyp",          limit: 9,                            null: false
    t.string  "kostl",            limit: 90,                           null: false
    t.string  "kokrs",            limit: 36,                           null: false
    t.string  "paobjnr",          limit: 90,                           null: false
    t.string  "prctr",            limit: 90,                           null: false
    t.string  "ps_psp_pnr",       limit: 72,                           null: false
    t.string  "aufnr",            limit: 108,                          null: false
    t.string  "posnr_pp",         limit: 36,                           null: false
    t.string  "kdauf",            limit: 90,                           null: false
    t.string  "kdpos",            limit: 54,                           null: false
    t.string  "vpmat",            limit: 162,                          null: false
    t.string  "vpwrk",            limit: 36,                           null: false
    t.string  "prbme",            limit: 27,                           null: false
    t.float   "umref",            limit: 126,                          null: false
    t.string  "knttp",            limit: 9,                            null: false
    t.string  "kzvbr",            limit: 9,                            null: false
    t.string  "fipos",            limit: 126,                          null: false
    t.string  "fistl",            limit: 144,                          null: false
    t.string  "geber",            limit: 90,                           null: false
    t.string  "pckpf",            limit: 9,                            null: false
    t.string  "bedar_lf",         limit: 27,                           null: false
    t.string  "cmpnt",            limit: 9,                            null: false
    t.decimal "kcmeng",                       precision: 15, scale: 3, null: false
    t.decimal "kcbrgew",                      precision: 15, scale: 3, null: false
    t.decimal "kcntgew",                      precision: 15, scale: 3, null: false
    t.decimal "kcvolum",                      precision: 15, scale: 3, null: false
    t.string  "uecha",            limit: 54,                           null: false
    t.string  "cuobj",            limit: 162,                          null: false
    t.string  "cuobj_ch",         limit: 162,                          null: false
    t.integer "anzsn",            limit: 10,  precision: 10,           null: false
    t.string  "serail",           limit: 36,                           null: false
    t.string  "kcgewei",          limit: 27,                           null: false
    t.string  "kcvoleh",          limit: 27,                           null: false
    t.string  "sernr",            limit: 72,                           null: false
    t.string  "abrli",            limit: 36,                           null: false
    t.string  "abart",            limit: 9,                            null: false
    t.string  "abrvw",            limit: 27,                           null: false
    t.string  "qplos",            limit: 108,                          null: false
    t.string  "qtlos",            limit: 54,                           null: false
    t.string  "nachl",            limit: 9,                            null: false
    t.string  "magrv",            limit: 36,                           null: false
    t.string  "objko",            limit: 198,                          null: false
    t.string  "objpo",            limit: 198,                          null: false
    t.string  "aeskd",            limit: 153,                          null: false
    t.string  "shkzg",            limit: 9,                            null: false
    t.string  "prosa",            limit: 9,                            null: false
    t.string  "uepvw",            limit: 9,                            null: false
    t.string  "empst",            limit: 225,                          null: false
    t.string  "abtnr",            limit: 36,                           null: false
    t.string  "koqui",            limit: 9,                            null: false
    t.string  "stadat",           limit: 72,                           null: false
    t.string  "aktnr",            limit: 90,                           null: false
    t.string  "knumh_ch",         limit: 90,                           null: false
    t.string  "prefe",            limit: 9,                            null: false
    t.string  "exart",            limit: 18,                           null: false
    t.string  "clint",            limit: 90,                           null: false
    t.string  "chmvs",            limit: 27,                           null: false
    t.string  "abeln",            limit: 90,                           null: false
    t.string  "abelp",            limit: 45,                           null: false
    t.float   "lfimg_flo",        limit: 126,                          null: false
    t.float   "lgmng_flo",        limit: 126,                          null: false
    t.float   "kcmeng_flo",       limit: 126,                          null: false
    t.string  "kzumw",            limit: 9,                            null: false
    t.decimal "kmpmg",                        precision: 13, scale: 3, null: false
    t.string  "aurel",            limit: 9,                            null: false
    t.integer "kpein",            limit: 5,   precision: 5,            null: false
    t.string  "kmein",            limit: 27,                           null: false
    t.decimal "netpr",                        precision: 11, scale: 2, null: false
    t.decimal "netwr",                        precision: 15, scale: 2, null: false
    t.string  "kowrr",            limit: 9,                            null: false
    t.string  "kzbew",            limit: 9,                            null: false
    t.string  "mfrgr",            limit: 72,                           null: false
    t.string  "chhpv",            limit: 9,                            null: false
    t.string  "abfor",            limit: 18,                           null: false
    t.float   "abges",            limit: 126,                          null: false
    t.string  "mbuhr",            limit: 54,                           null: false
    t.string  "wktnr",            limit: 90,                           null: false
    t.string  "wktps",            limit: 54,                           null: false
    t.string  "j_1bcfop",         limit: 90,                           null: false
    t.string  "j_1btaxlw1",       limit: 27,                           null: false
    t.string  "j_1btaxlw2",       limit: 27,                           null: false
    t.string  "j_1btxsdc",        limit: 18,                           null: false
    t.string  "situa",            limit: 18,                           null: false
    t.string  "rsnum",            limit: 90,                           null: false
    t.string  "rspos",            limit: 36,                           null: false
    t.string  "rsart",            limit: 9,                            null: false
    t.string  "kannr",            limit: 315,                          null: false
    t.string  "kzfme",            limit: 9,                            null: false
    t.string  "profl",            limit: 27,                           null: false
    t.decimal "kcmengvme",                    precision: 15, scale: 3, null: false
    t.float   "kcmengvmef",       limit: 126,                          null: false
    t.string  "kzbws",            limit: 9,                            null: false
    t.string  "pspnr",            limit: 72,                           null: false
    t.string  "eprio",            limit: 36,                           null: false
    t.string  "rules",            limit: 36,                           null: false
    t.string  "kzbef",            limit: 9,                            null: false
    t.string  "mprof",            limit: 36,                           null: false
    t.string  "ematn",            limit: 162,                          null: false
    t.string  "lgbzo",            limit: 90,                           null: false
    t.string  "handle",           limit: 198,                          null: false
    t.string  "verurpos",         limit: 54,                           null: false
    t.string  "lifexpos",         limit: 54,                           null: false
    t.string  "noatp",            limit: 9,                            null: false
    t.string  "nopck",            limit: 9,                            null: false
    t.string  "rblvs",            limit: 27,                           null: false
    t.string  "berid",            limit: 90,                           null: false
    t.string  "bestq",            limit: 9,                            null: false
    t.string  "umbsq",            limit: 9,                            null: false
    t.string  "ummat",            limit: 162,                          null: false
    t.string  "umwrk",            limit: 36,                           null: false
    t.string  "umlgo",            limit: 36,                           null: false
    t.string  "umcha",            limit: 90,                           null: false
    t.string  "umbar",            limit: 90,                           null: false
    t.string  "umsok",            limit: 9,                            null: false
    t.string  "sonum",            limit: 144,                          null: false
    t.string  "usonu",            limit: 144,                          null: false
    t.decimal "akkur",                        precision: 9,  scale: 5, null: false
    t.string  "akmng",            limit: 9,                            null: false
    t.string  "vkgru",            limit: 27,                           null: false
    t.string  "shkzg_um",         limit: 9,                            null: false
    t.string  "insmk",            limit: 9,                            null: false
    t.string  "kzech",            limit: 9,                            null: false
    t.string  "flgwm",            limit: 9,                            null: false
    t.string  "berkz",            limit: 9,                            null: false
    t.string  "hupos",            limit: 9,                            null: false
    t.string  "nowab",            limit: 9,                            null: false
    t.string  "konto",            limit: 90,                           null: false
    t.string  "kzear",            limit: 9,                            null: false
    t.string  "hsdat",            limit: 72,                           null: false
    t.string  "vfdat",            limit: 72,                           null: false
    t.string  "lfgja",            limit: 36,                           null: false
    t.string  "lfbnr",            limit: 90,                           null: false
    t.string  "lfpos",            limit: 36,                           null: false
    t.string  "grund",            limit: 36,                           null: false
    t.string  "fobwa",            limit: 27,                           null: false
    t.string  "dlvtp",            limit: 18,                           null: false
    t.decimal "exbwr",                        precision: 13, scale: 2, null: false
    t.decimal "bpmng",                        precision: 13, scale: 3, null: false
    t.decimal "exvkw",                        precision: 13, scale: 2, null: false
    t.float   "cmpre_flt",        limit: 126,                          null: false
    t.string  "kzpod",            limit: 9,                            null: false
    t.string  "lfdez",            limit: 9,                            null: false
    t.float   "umrev",            limit: 126,                          null: false
    t.string  "podrel",           limit: 9,                            null: false
    t.string  "kzuml",            limit: 9,                            null: false
    t.string  "fkber",            limit: 144,                          null: false
    t.string  "grant_nbr",        limit: 180,                          null: false
    t.string  "kzwso",            limit: 9,                            null: false
    t.string  "gmcontrol",        limit: 9,                            null: false
    t.string  "posting_change",   limit: 9,                            null: false
    t.string  "um_ps_psp_pnr",    limit: 72,                           null: false
    t.string  "pre_vl_etens",     limit: 36,                           null: false
    t.string  "spe_gen_elikz",    limit: 9,                            null: false
    t.string  "spe_scrap_ind",    limit: 9,                            null: false
    t.string  "spe_auth_number",  limit: 180,                          null: false
    t.raw     "spe_inspout_guid", limit: 16
    t.string  "spe_follow_up",    limit: 36,                           null: false
    t.integer "spe_exp_date_ext", limit: 15,  precision: 15,           null: false
    t.integer "spe_exp_date_int", limit: 15,  precision: 15,           null: false
    t.string  "spe_auth_complet", limit: 9,                            null: false
    t.decimal "ormng",                        precision: 13, scale: 3, null: false
    t.integer "spe_atp_tmstmp",   limit: 15,  precision: 15,           null: false
    t.string  "spe_orig_sys",     limit: 9,                            null: false
    t.decimal "spe_lieffz",                   precision: 15, scale: 3, null: false
    t.string  "spe_imwrk",        limit: 9,                            null: false
    t.string  "spe_lifexpos2",    limit: 315,                          null: false
    t.string  "spe_except_code",  limit: 36,                           null: false
    t.decimal "spe_keep_qty",                 precision: 13, scale: 3, null: false
    t.string  "spe_alternate",    limit: 360,                          null: false
    t.string  "spe_mat_subst",    limit: 9,                            null: false
    t.string  "spe_struc",        limit: 27,                           null: false
    t.integer "spe_apo_qntyfac",  limit: 5,   precision: 5,            null: false
    t.integer "spe_apo_qntydiv",  limit: 5,   precision: 5,            null: false
    t.string  "spe_herkl",        limit: 27,                           null: false
    t.integer "spe_bxp_date_ext", limit: 15,  precision: 15,           null: false
    t.string  "spe_version",      limit: 36,                           null: false
    t.string  "spe_compl_mvt",    limit: 9,                            null: false
    t.string  "j_1btaxlw4",       limit: 27,                           null: false
    t.string  "j_1btaxlw5",       limit: 27,                           null: false
    t.string  "j_1btaxlw3",       limit: 27,                           null: false
    t.string  "budget_pd",        limit: 90,                           null: false
    t.string  "kbnkz",            limit: 9,                            null: false
    t.string  "cons_order",       limit: 9,                            null: false
  end

  create_table "lum", id: false, force: :cascade do |t|
    t.string "matnr", limit: 162, null: false
    t.string "werks", limit: 36,  null: false
  end

  create_table "lum01", id: false, force: :cascade do |t|
    t.string  "mjahr", limit: 36,                           null: false
    t.string  "mblnr", limit: 90,                           null: false
    t.string  "zeile", limit: 36,                           null: false
    t.string  "frbnr", limit: 144,                          null: false
    t.string  "budat", limit: 72,                           null: false
    t.string  "cpudt", limit: 72,                           null: false
    t.string  "cputm", limit: 54,                           null: false
    t.string  "matnr", limit: 162,                          null: false
    t.string  "charg", limit: 90,                           null: false
    t.string  "insmk", limit: 9,                            null: false
    t.string  "lifnr", limit: 90,                           null: false
    t.string  "shkzg", limit: 9,                            null: false
    t.string  "meins", limit: 27,                           null: false
    t.string  "ebelp", limit: 45,                           null: false
    t.string  "ebeln", limit: 90,                           null: false
    t.string  "bwart", limit: 27,                           null: false
    t.decimal "menge"
    t.decimal "wrbtr",             precision: 13, scale: 2
    t.string  "waers", limit: 45
    t.decimal "netpr"
    t.string  "maktx", limit: 360
    t.string  "name1", limit: 315
    t.string  "cucur", limit: 27
    t.decimal "ntgew"
  end

  create_table "lum1", id: false, force: :cascade do |t|
    t.string  "budat", limit: 72,  null: false
    t.string  "matnr", limit: 162, null: false
    t.string  "aufnr", limit: 108, null: false
    t.string  "charg", limit: 90,  null: false
    t.decimal "menge"
    t.string  "meins", limit: 27,  null: false
    t.string  "rsnum", limit: 90,  null: false
    t.string  "rspos", limit: 36,  null: false
    t.decimal "dmbtr"
    t.string  "waers", limit: 45,  null: false
    t.string  "aufpl", limit: 90
    t.string  "vornr", limit: 36
    t.string  "aplzl", limit: 72
  end

  create_table "lum_mo", id: false, force: :cascade do |t|
    t.string  "aufnr",    limit: 108
    t.string  "pwerk",    limit: 36
    t.string  "dgltp",    limit: 72
    t.string  "matnr",    limit: 162
    t.string  "maktx",    limit: 360
    t.decimal "psmng",                precision: 13, scale: 3
    t.decimal "wemng",                precision: 13, scale: 3
    t.decimal "stdmat"
    t.decimal "stdlab"
    t.decimal "stdmch"
    t.decimal "stdovh"
    t.decimal "stdlabhr"
    t.decimal "actmat"
    t.decimal "actlab"
    t.decimal "actl01"
    t.decimal "actl0a"
    t.decimal "actl0b"
    t.decimal "actl0c"
    t.decimal "actmch"
    t.decimal "actovh"
    t.decimal "actlabhr"
    t.decimal "actl01hr"
    t.decimal "actl0ahr"
    t.decimal "actl0bhr"
    t.decimal "actl0chr"
  end

  create_table "lum_mo_mat", id: false, force: :cascade do |t|
    t.string  "aufnr", limit: 108, null: false
    t.string  "matkl", limit: 81
    t.string  "matnr", limit: 162, null: false
    t.decimal "amt"
  end

  create_table "lum_mo_mat_grp", id: false, force: :cascade do |t|
    t.string  "aufnr", limit: 108, null: false
    t.decimal "r01"
    t.decimal "r02"
    t.decimal "r04"
    t.decimal "r05"
    t.decimal "r06"
    t.decimal "r07"
    t.decimal "r09"
    t.decimal "r11"
    t.decimal "r12"
    t.decimal "r13"
    t.decimal "r15"
    t.decimal "r16"
    t.decimal "r19"
    t.decimal "r20"
    t.decimal "r21"
    t.decimal "r22"
    t.decimal "r23"
    t.decimal "r24"
    t.decimal "r25"
    t.decimal "r26"
    t.decimal "r29"
    t.decimal "r98"
    t.decimal "rad"
    t.decimal "rck"
    t.decimal "rct"
    t.decimal "rgp"
    t.decimal "rlb"
    t.decimal "rld"
    t.decimal "rlp"
    t.decimal "rol"
    t.decimal "ros"
    t.decimal "rot"
    t.decimal "rpt"
    t.decimal "rsd"
    t.decimal "rso"
    t.decimal "rst"
    t.decimal "rsw"
    t.decimal "rtc"
    t.decimal "rtp"
    t.decimal "rtr"
    t.decimal "rwi"
    t.decimal "amt"
  end

  create_table "lum_mo_mat_grp_19", id: false, force: :cascade do |t|
    t.string  "aufnr",  limit: 108, null: false
    t.decimal "r19_01"
    t.decimal "r19_02"
    t.decimal "r19_03"
    t.decimal "r19_04"
    t.decimal "r19_05"
    t.decimal "r19_06"
    t.decimal "r19_10"
    t.decimal "r19_11"
    t.decimal "r19_12"
    t.decimal "r19_13"
    t.decimal "r19_14"
    t.decimal "r19_15"
    t.decimal "r19_16"
    t.decimal "r19_20"
    t.decimal "r19_21"
    t.decimal "r19_22"
    t.decimal "r19_23"
    t.decimal "r19_24"
    t.decimal "r19_25"
    t.decimal "r19_26"
    t.decimal "r19_28"
    t.decimal "r19_30"
    t.decimal "r19_31"
    t.decimal "r19_32"
    t.decimal "r19_33"
    t.decimal "r19_34"
    t.decimal "r19_40"
    t.decimal "r19_41"
    t.decimal "r19_42"
    t.decimal "r19_43"
    t.decimal "r19_44"
    t.decimal "r19_45"
    t.decimal "r19_46"
    t.decimal "r19_47"
    t.decimal "r19_50"
    t.decimal "r19_51"
    t.decimal "r19_52"
    t.decimal "r19_53"
    t.decimal "r19_54"
    t.decimal "r19_55"
    t.decimal "r19_56"
    t.decimal "r19_57"
    t.decimal "r19_58"
    t.decimal "r19_59"
    t.decimal "r19_61"
    t.decimal "r19_62"
    t.decimal "r19_63"
    t.decimal "r19_64"
    t.decimal "r19_72"
  end

  create_table "lum_mo_matnr", id: false, force: :cascade do |t|
    t.string "artnr", limit: 162, null: false
    t.string "matkl", limit: 81
    t.string "vtweg", limit: 18,  null: false
    t.string "kunnr", limit: 90,  null: false
    t.string "sortl", limit: 90
    t.string "name1", limit: 315
    t.string "csgrp", limit: 315
    t.string "armgr", limit: 450
    t.string "srep2", limit: 450
    t.string "brand", limit: 360
    t.string "ewbez", limit: 180
    t.string "利潤中心",  limit: nil
  end

  create_table "lum_mo_price", id: false, force: :cascade do |t|
    t.string  "period", limit: 24
    t.string  "artnr",  limit: 162, null: false
    t.string  "vtweg",  limit: 18,  null: false
    t.decimal "usprc"
  end

  create_table "lum_mo_price_adj", id: false, force: :cascade do |t|
    t.string  "period", limit: 24
    t.string  "artnr",  limit: 162
    t.string  "vtweg",  limit: 2
    t.decimal "usprc"
    t.decimal "rank"
  end

  create_table "lum_mo_report", id: false, force: :cascade do |t|
    t.string  "vtweg",    limit: 2
    t.string  "curr",     limit: 3
    t.string  "aufnr",    limit: 108
    t.string  "pwerk",    limit: 36
    t.string  "dgltp",    limit: 72
    t.string  "matnr",    limit: 162
    t.string  "maktx",    limit: 360
    t.decimal "psmng",                precision: 13, scale: 3
    t.decimal "wemng",                precision: 13, scale: 3
    t.decimal "stdmat"
    t.decimal "stdlab"
    t.decimal "stdmch"
    t.decimal "stdovh"
    t.decimal "stdlabhr"
    t.decimal "actmat"
    t.decimal "actlab"
    t.decimal "actl01"
    t.decimal "actl0a"
    t.decimal "actl0b"
    t.decimal "actl0c"
    t.decimal "actmch"
    t.decimal "actovh"
    t.decimal "actlabhr"
    t.decimal "actl01hr"
    t.decimal "actl0ahr"
    t.decimal "actl0bhr"
    t.decimal "actl0chr"
    t.decimal "r01"
    t.decimal "r02"
    t.decimal "r04"
    t.decimal "r05"
    t.decimal "r06"
    t.decimal "r07"
    t.decimal "r09"
    t.decimal "r11"
    t.decimal "r12"
    t.decimal "r13"
    t.decimal "r15"
    t.decimal "r16"
    t.decimal "r19"
    t.decimal "r20"
    t.decimal "r21"
    t.decimal "r22"
    t.decimal "r23"
    t.decimal "r24"
    t.decimal "r25"
    t.decimal "r26"
    t.decimal "r29"
    t.decimal "r98"
    t.decimal "rad"
    t.decimal "rck"
    t.decimal "rct"
    t.decimal "rgp"
    t.decimal "rlb"
    t.decimal "rld"
    t.decimal "rlp"
    t.decimal "rol"
    t.decimal "ros"
    t.decimal "rot"
    t.decimal "rpt"
    t.decimal "rsd"
    t.decimal "rso"
    t.decimal "rst"
    t.decimal "rsw"
    t.decimal "rtc"
    t.decimal "rtp"
    t.decimal "rtr"
    t.decimal "rwi"
    t.decimal "r19_01"
    t.decimal "r19_02"
    t.decimal "r19_03"
    t.decimal "r19_04"
    t.decimal "r19_05"
    t.decimal "r19_06"
    t.decimal "r19_10"
    t.decimal "r19_11"
    t.decimal "r19_12"
    t.decimal "r19_13"
    t.decimal "r19_14"
    t.decimal "r19_15"
    t.decimal "r19_16"
    t.decimal "r19_20"
    t.decimal "r19_21"
    t.decimal "r19_22"
    t.decimal "r19_23"
    t.decimal "r19_24"
    t.decimal "r19_25"
    t.decimal "r19_26"
    t.decimal "r19_28"
    t.decimal "r19_30"
    t.decimal "r19_31"
    t.decimal "r19_32"
    t.decimal "r19_33"
    t.decimal "r19_34"
    t.decimal "r19_40"
    t.decimal "r19_41"
    t.decimal "r19_42"
    t.decimal "r19_43"
    t.decimal "r19_44"
    t.decimal "r19_45"
    t.decimal "r19_46"
    t.decimal "r19_47"
    t.decimal "r19_50"
    t.decimal "r19_51"
    t.decimal "r19_52"
    t.decimal "r19_53"
    t.decimal "r19_54"
    t.decimal "r19_55"
    t.decimal "r19_56"
    t.decimal "r19_57"
    t.decimal "r19_58"
    t.decimal "r19_59"
    t.decimal "r19_61"
    t.decimal "r19_62"
    t.decimal "r19_63"
    t.decimal "r19_64"
    t.decimal "r19_72"
    t.decimal "mrate"
    t.decimal "us_price"
    t.string  "kunnr"
    t.decimal "r19_ot"
  end

  create_table "lum_tcurr", id: false, force: :cascade do |t|
    t.string  "mandt", limit: 27,                         null: false
    t.string  "kurst", limit: 36,                         null: false
    t.string  "fcurr", limit: 45,                         null: false
    t.string  "tcurr", limit: 45,                         null: false
    t.string  "gdatu", limit: 72,                         null: false
    t.decimal "ukurs",            precision: 9, scale: 5, null: false
    t.integer "ffact", limit: 9,  precision: 9,           null: false
    t.integer "tfact", limit: 9,  precision: 9,           null: false
  end

  create_table "matnr_sr", id: false, force: :cascade do |t|
    t.string  "pl",     limit: 180
    t.string  "matnr",  limit: 162, null: false
    t.string  "maktx",  limit: 360, null: false
    t.string  "matkl",  limit: 81,  null: false
    t.string  "kunnr",  limit: 90
    t.string  "name1",  limit: 315
    t.string  "vkgrp",  limit: 27
    t.string  "sr",     limit: 180
    t.decimal "stkbal"
  end

  create_table "mfg_mat_return", id: false, force: :cascade do |t|
    t.string  "bwart", limit: 27,                           null: false
    t.string  "budat", limit: 72,                           null: false
    t.string  "bktxt", limit: 225,                          null: false
    t.string  "mblnr", limit: 90,                           null: false
    t.string  "mjahr", limit: 36,                           null: false
    t.string  "zeile", limit: 36,                           null: false
    t.string  "matnr", limit: 162,                          null: false
    t.string  "charg", limit: 90,                           null: false
    t.string  "matkl", limit: 81,                           null: false
    t.string  "maktx", limit: 360,                          null: false
    t.string  "aufnr", limit: 108,                          null: false
    t.string  "rsnum", limit: 90,                           null: false
    t.string  "rspos", limit: 36,                           null: false
    t.decimal "dmbtr",             precision: 13, scale: 2, null: false
    t.decimal "menge",             precision: 13, scale: 3, null: false
    t.string  "meins", limit: 27,                           null: false
    t.decimal "enmng",             precision: 13, scale: 3
    t.decimal "erfmg",             precision: 13, scale: 3
    t.string  "vornr", limit: 36
    t.decimal "psmng",             precision: 13, scale: 3
    t.decimal "wemng",             precision: 13, scale: 3
  end

  create_table "mfg_mat_reuse", id: false, force: :cascade do |t|
    t.string  "matnr", limit: 162,                          null: false
    t.string  "maktx", limit: 360,                          null: false
    t.string  "matkl", limit: 81,                           null: false
    t.string  "charg", limit: 90,                           null: false
    t.string  "mjahr", limit: 36,                           null: false
    t.string  "mblnr", limit: 90,                           null: false
    t.string  "zeile", limit: 36,                           null: false
    t.string  "aufnr", limit: 108,                          null: false
    t.decimal "dmbtr",             precision: 13, scale: 2, null: false
    t.decimal "menge",             precision: 13, scale: 3, null: false
    t.string  "meins", limit: 27,                           null: false
    t.string  "budat", limit: 72,                           null: false
    t.string  "rsnum", limit: 90,                           null: false
    t.string  "rspos", limit: 36,                           null: false
  end

  create_table "mittra", id: false, force: :cascade do |t|
    t.integer "rrn400", limit: 11,  precision: 11,           null: false
    t.integer "mtcono", limit: 3,   precision: 3
    t.string  "mtwhlo", limit: nil,                          null: false
    t.string  "mtitno", limit: nil,                          null: false
    t.integer "mtrgdt", limit: 8,   precision: 8
    t.integer "mtrgtm", limit: 6,   precision: 6
    t.integer "mttmsx", limit: 3,   precision: 3
    t.integer "mttrdt", limit: 8,   precision: 8
    t.string  "mtresp", limit: nil,                          null: false
    t.string  "mtttid", limit: nil,                          null: false
    t.string  "mttrtp", limit: nil,                          null: false
    t.integer "mtttyp", limit: 2,   precision: 2
    t.string  "mtsltp", limit: nil,                          null: false
    t.string  "mtwhsl", limit: nil,                          null: false
    t.string  "mtbano", limit: nil,                          null: false
    t.string  "mtcamu", limit: nil,                          null: false
    t.string  "mtbref", limit: nil,                          null: false
    t.string  "mtbre2", limit: nil,                          null: false
    t.string  "mtridn", limit: nil,                          null: false
    t.integer "mtrido", limit: 6,   precision: 6
    t.integer "mtridl", limit: 6,   precision: 6
    t.integer "mtridi", limit: 3,   precision: 3
    t.string  "mtrftx", limit: nil,                          null: false
    t.boolean "mtrorc", limit: nil
    t.string  "mtrorn", limit: nil,                          null: false
    t.integer "mtrorl", limit: 6,   precision: 6
    t.boolean "mtrprt", limit: nil
    t.string  "mtecve", limit: nil,                          null: false
    t.string  "mtstas", limit: nil,                          null: false
    t.decimal "mttrqt",             precision: 15, scale: 6
    t.decimal "mtnstq",             precision: 15, scale: 6
    t.decimal "mtnstt",             precision: 15, scale: 6
    t.integer "mtrepn", limit: 10,  precision: 10
    t.boolean "mtiner", limit: nil
    t.boolean "mttupc", limit: nil
    t.decimal "mttrpr",             precision: 17, scale: 6
    t.string  "mtacrf", limit: nil,                          null: false
    t.integer "mtanbr", limit: 9,   precision: 9
    t.decimal "mtmfco",             precision: 17, scale: 6
    t.decimal "mtstno",             precision: 15, scale: 6
    t.string  "mtproj", limit: nil,                          null: false
    t.string  "mtelno", limit: nil,                          null: false
    t.string  "mtrscd", limit: nil,                          null: false
    t.decimal "mtcawe",             precision: 15, scale: 6
    t.string  "mtnhai", limit: nil,                          null: false
    t.string  "mtnhsn", limit: nil,                          null: false
    t.integer "mtbirt", limit: 10,  precision: 10
    t.boolean "mtindi", limit: nil
    t.string  "mtcfgl", limit: nil,                          null: false
    t.boolean "mtloch", limit: nil
    t.integer "mtdeid", limit: 7,   precision: 7
    t.integer "jodate", limit: 8,   precision: 8
    t.integer "jotime", limit: 6,   precision: 6
  end

  create_table "moheadt", id: false, force: :cascade do |t|
    t.string  "item_no",    limit: nil,               null: false
    t.string  "lot_no",     limit: nil,               null: false
    t.string  "mo_no",      limit: nil,               null: false
    t.integer "entry_date", limit: 8,   precision: 8
  end

  create_table "momatt", id: false, force: :cascade do |t|
    t.string  "mo_no",       limit: nil,                          null: false
    t.string  "material_no", limit: nil
    t.string  "lot_no",      limit: nil
    t.integer "issue_date",  limit: 8,   precision: 8
    t.decimal "issue_qty",               precision: 15, scale: 4
    t.string  "warehouse",   limit: nil
  end

  create_table "mvx_tr_types", id: false, force: :cascade do |t|
    t.string "sobkz", limit: nil
    t.string "bwart", limit: nil
    t.string "kzbew", limit: nil
    t.string "btext", limit: nil
  end

  create_table "openpo", id: false, force: :cascade do |t|
    t.string  "ekorg",  limit: 36,                           null: false
    t.string  "werks",  limit: 36,                           null: false
    t.string  "lifnr",  limit: 90,                           null: false
    t.string  "sortl",  limit: 90,                           null: false
    t.string  "bedat",  limit: 72,                           null: false
    t.string  "ebeln",  limit: 90,                           null: false
    t.string  "ebelp",  limit: 45,                           null: false
    t.string  "matnr",  limit: 162,                          null: false
    t.string  "maktx",  limit: 360,                          null: false
    t.decimal "menge",              precision: 13, scale: 3, null: false
    t.decimal "wemng"
    t.string  "meins",  limit: 27,                           null: false
    t.string  "matkl",  limit: 81,                           null: false
    t.string  "ekgrp",  limit: 27,                           null: false
    t.decimal "bstrf",              precision: 13, scale: 3, null: false
    t.integer "plifz",  limit: 3,   precision: 3,            null: false
    t.string  "name1",  limit: 315,                          null: false
    t.string  "waers",  limit: 45,                           null: false
    t.decimal "netpr"
    t.decimal "mrate"
    t.string  "parvw",  limit: 18
    t.decimal "opnqty"
    t.decimal "amount"
  end

  create_table "openpo_20141128", id: false, force: :cascade do |t|
    t.string  "ekorg",  limit: 36,                           null: false
    t.string  "werks",  limit: 36,                           null: false
    t.string  "lifnr",  limit: 90,                           null: false
    t.string  "sortl",  limit: 90,                           null: false
    t.string  "bedat",  limit: 72,                           null: false
    t.string  "ebeln",  limit: 90,                           null: false
    t.string  "ebelp",  limit: 45,                           null: false
    t.string  "matnr",  limit: 162,                          null: false
    t.string  "maktx",  limit: 360,                          null: false
    t.decimal "menge",              precision: 13, scale: 3, null: false
    t.decimal "wemng"
    t.string  "meins",  limit: 27,                           null: false
    t.string  "matkl",  limit: 81,                           null: false
    t.string  "ekgrp",  limit: 27,                           null: false
    t.decimal "bstrf",              precision: 13, scale: 3, null: false
    t.integer "plifz",  limit: 3,   precision: 3,            null: false
    t.string  "name1",  limit: 315,                          null: false
    t.string  "waers",  limit: 45,                           null: false
    t.decimal "netpr"
    t.decimal "mrate"
    t.decimal "opnqty"
    t.decimal "amount"
  end

  create_table "openpo_20141128a", id: false, force: :cascade do |t|
    t.string  "ekorg",  limit: 36,                           null: false
    t.string  "werks",  limit: 36,                           null: false
    t.string  "lifnr",  limit: 90,                           null: false
    t.string  "sortl",  limit: 90,                           null: false
    t.string  "bedat",  limit: 72,                           null: false
    t.string  "ebeln",  limit: 90,                           null: false
    t.string  "ebelp",  limit: 45,                           null: false
    t.string  "matnr",  limit: 162,                          null: false
    t.string  "maktx",  limit: 360,                          null: false
    t.decimal "menge",              precision: 13, scale: 3, null: false
    t.decimal "wemng"
    t.string  "meins",  limit: 27,                           null: false
    t.string  "matkl",  limit: 81,                           null: false
    t.string  "ekgrp",  limit: 27,                           null: false
    t.decimal "bstrf",              precision: 13, scale: 3, null: false
    t.integer "plifz",  limit: 3,   precision: 3,            null: false
    t.string  "name1",  limit: 315,                          null: false
    t.string  "waers",  limit: 45,                           null: false
    t.decimal "netpr"
    t.decimal "mrate"
    t.decimal "opnqty"
    t.decimal "amount"
  end

  create_table "openpos", id: false, force: :cascade do |t|
    t.string  "ekorg",  limit: 36,                           null: false
    t.string  "werks",  limit: 36,                           null: false
    t.string  "lifnr",  limit: 90,                           null: false
    t.string  "sortl",  limit: 90,                           null: false
    t.string  "bedat",  limit: 72,                           null: false
    t.string  "ebeln",  limit: 90,                           null: false
    t.string  "ebelp",  limit: 45,                           null: false
    t.string  "matnr",  limit: 162,                          null: false
    t.string  "maktx",  limit: 360,                          null: false
    t.decimal "menge",              precision: 13, scale: 3, null: false
    t.decimal "wemng"
    t.string  "meins",  limit: 27,                           null: false
    t.string  "matkl",  limit: 81,                           null: false
    t.string  "ekgrp",  limit: 27,                           null: false
    t.decimal "bstrf",              precision: 13, scale: 3, null: false
    t.integer "plifz",  limit: 3,   precision: 3,            null: false
    t.string  "name1",  limit: 315,                          null: false
    t.string  "waers",  limit: 45,                           null: false
    t.decimal "netpr"
    t.decimal "mrate"
    t.decimal "opnqty"
    t.decimal "amount"
  end

  create_table "porcv2011", id: false, force: :cascade do |t|
    t.string  "bwart",  limit: 27,                           null: false
    t.string  "ebeln",  limit: 90,                           null: false
    t.string  "ebelp",  limit: 45,                           null: false
    t.string  "belnr",  limit: 90,                           null: false
    t.string  "buzei",  limit: 36,                           null: false
    t.string  "budat",  limit: 72,                           null: false
    t.decimal "netpr"
    t.decimal "menge",              precision: 13, scale: 3, null: false
    t.decimal "wrbtr",              precision: 13, scale: 2, null: false
    t.string  "waers",  limit: 45,                           null: false
    t.decimal "cnetpr"
    t.string  "shkzg",  limit: 9,                            null: false
    t.string  "matnr",  limit: 162,                          null: false
    t.string  "matkl",  limit: 81,                           null: false
    t.string  "maktx",  limit: 360
    t.string  "meins",  limit: 27,                           null: false
    t.string  "wgbez",  limit: 180
    t.string  "hrktx",  limit: 360
    t.string  "werks",  limit: 36,                           null: false
    t.string  "lifnr",  limit: 90,                           null: false
    t.string  "bsart",  limit: 36,                           null: false
    t.decimal "mrate"
    t.string  "vtweg",  limit: 2
    t.string  "ctype",  limit: 3
    t.string  "name1",  limit: 315,                          null: false
    t.string  "sortl",  limit: 90,                           null: false
    t.decimal "usprc"
  end

  create_table "purcst", id: false, force: :cascade do |t|
    t.string  "year",  limit: nil
    t.string  "vtweg", limit: nil
    t.string  "ctype", limit: nil
    t.string  "matnr", limit: nil
    t.decimal "stdcs",             precision: 15, scale: 6
    t.decimal "rmb01",             precision: 15, scale: 6
    t.decimal "rmb02",             precision: 15, scale: 6
    t.decimal "rmb03",             precision: 15, scale: 6
    t.decimal "rmb04",             precision: 15, scale: 6
    t.decimal "rmb05",             precision: 15, scale: 6
    t.decimal "rmb06",             precision: 15, scale: 6
    t.decimal "rmb07",             precision: 15, scale: 6
    t.decimal "rmb08",             precision: 15, scale: 6
    t.decimal "rmb09",             precision: 15, scale: 6
    t.decimal "rmb10",             precision: 15, scale: 6
    t.decimal "rmb11",             precision: 15, scale: 6
    t.decimal "rmb12",             precision: 15, scale: 6
  end

  create_table "rlfcs", id: false, force: :cascade do |t|
    t.string  "pbdnr",  limit: 90,                           null: false
    t.string  "matnr",  limit: 162,                          null: false
    t.string  "versb",  limit: 18,                           null: false
    t.string  "werks",  limit: 36,                           null: false
    t.string  "bedae",  limit: 36,                           null: false
    t.string  "bdzei",  limit: 108,                          null: false
    t.string  "pdatu",  limit: 72,                           null: false
    t.decimal "plnmg",              precision: 13, scale: 3, null: false
    t.decimal "entmg",              precision: 13, scale: 3, null: false
    t.string  "pwerks", limit: 36
  end

  create_table "s001", id: false, force: :cascade do |t|
    t.string "vtweg", limit: 18
    t.string "werks", limit: 36
    t.string "pl",    limit: 2
    t.string "artnr", limit: 162
    t.string "pwerk", limit: 36
  end

  create_table "s002", id: false, force: :cascade do |t|
    t.string  "vtweg", limit: 18
    t.string  "artnr", limit: 162
    t.string  "werks", limit: 36
    t.string  "pl",    limit: 2
    t.string  "pwerk", limit: 36
    t.decimal "netpr"
    t.decimal "crate"
    t.decimal "matam"
    t.decimal "labam"
    t.decimal "mcham"
    t.decimal "ovham"
  end

  create_table "sap_aufm_resbs", id: false, force: :cascade do |t|
    t.string  "mandt",  limit: 27,                           null: false
    t.string  "mblnr",  limit: 90,                           null: false
    t.string  "mjahr",  limit: 36,                           null: false
    t.string  "zeile",  limit: 36,                           null: false
    t.string  "budat",  limit: 72,                           null: false
    t.string  "bwart",  limit: 27,                           null: false
    t.string  "matnr",  limit: 162,                          null: false
    t.string  "werks",  limit: 36,                           null: false
    t.string  "lgort",  limit: 36,                           null: false
    t.string  "charg",  limit: 90,                           null: false
    t.string  "shkzg",  limit: 9,                            null: false
    t.decimal "dmbtr",              precision: 13, scale: 2, null: false
    t.string  "waers",  limit: 45,                           null: false
    t.decimal "menge",              precision: 13, scale: 3, null: false
    t.string  "meins",  limit: 27,                           null: false
    t.string  "aufnr",  limit: 108,                          null: false
    t.string  "rsnum",  limit: 90,                           null: false
    t.string  "rspos",  limit: 36,                           null: false
    t.string  "posnr",  limit: 36
    t.string  "vornr",  limit: 36
    t.decimal "ausch",              precision: 5,  scale: 2
    t.float   "esmng",  limit: 126
    t.string  "matkl",  limit: 81
    t.string  "hrkft",  limit: 36
    t.string  "mtart",  limit: 36
    t.decimal "enmng",              precision: 13, scale: 3
    t.decimal "psmng",              precision: 13, scale: 3
    t.decimal "wemng",              precision: 13, scale: 3
    t.string  "pmatnr", limit: 162
    t.string  "pwerk",  limit: 36
    t.string  "dauat",  limit: 36
    t.string  "caufnr", limit: 108,                          null: false
    t.string  "cebeln", limit: 90
    t.string  "cebelp", limit: 45
    t.string  "cbwart", limit: 27
  end

  create_table "sap_ekes_20140511", id: false, force: :cascade do |t|
    t.string  "ebeln",  limit: 90,                           null: false
    t.string  "ebelp",  limit: 45,                           null: false
    t.string  "gjahr",  limit: 36,                           null: false
    t.string  "belnr",  limit: 90,                           null: false
    t.string  "buzei",  limit: 36,                           null: false
    t.string  "budat",  limit: 72,                           null: false
    t.decimal "menge",              precision: 13, scale: 3, null: false
    t.string  "waers",  limit: 45,                           null: false
    t.decimal "cnetpr"
    t.string  "xblnr",  limit: 144,                          null: false
    t.string  "matnr",  limit: 162,                          null: false
    t.string  "werks",  limit: 36,                           null: false
    t.string  "charg",  limit: 90,                           null: false
    t.decimal "peinh"
  end

  add_index "sap_ekes_20140511", ["matnr", "\"BUDAT\"", "\"GJAHR\"", "\"BELNR\"", "\"BUZEI\""], name: "sap_ekes_20140511_1"

  create_table "sap_goodrcv", id: false, force: :cascade do |t|
    t.string  "werks", limit: 36,  null: false
    t.string  "matnr", limit: 162, null: false
    t.decimal "menge"
  end

  create_table "sap_kna1", id: false, force: :cascade do |t|
    t.string "kunnr", limit: 90,  null: false
    t.string "name1", limit: 315, null: false
    t.string "sortl", limit: 90,  null: false
  end

  create_table "sap_likp_vbak", id: false, force: :cascade do |t|
    t.string "mandt", limit: 27, null: false
    t.string "erdat", limit: 72, null: false
    t.string "vbeln", limit: 90, null: false
    t.string "vstel", limit: 36, null: false
    t.string "vkorg", limit: 36, null: false
    t.string "lfart", limit: 36, null: false
    t.string "kunag", limit: 90
    t.string "kunnr", limit: 90
    t.string "sodno", limit: 90
  end

  create_table "sap_mara", id: false, force: :cascade do |t|
    t.string  "matnr", limit: 162,                          null: false
    t.string  "mtart", limit: 36,                           null: false
    t.string  "matkl", limit: 81,                           null: false
    t.string  "meins", limit: 27,                           null: false
    t.string  "zeinr", limit: 198,                          null: false
    t.decimal "ntgew",             precision: 13, scale: 3, null: false
    t.string  "gewei", limit: 27,                           null: false
    t.string  "maktx", limit: 360,                          null: false
  end

  create_table "sap_matnr_chargs", id: false, force: :cascade do |t|
    t.string  "matnr", limit: 162,                          null: false
    t.string  "charg", limit: 90,                           null: false
    t.string  "bwart", limit: 27,                           null: false
    t.string  "budat", limit: 72,                           null: false
    t.string  "ebeln", limit: 90,                           null: false
    t.string  "ebelp", limit: 45,                           null: false
    t.string  "aufnr", limit: 108,                          null: false
    t.string  "mblnr", limit: 90,                           null: false
    t.string  "mjahr", limit: 36,                           null: false
    t.string  "zeile", limit: 36,                           null: false
    t.string  "werks", limit: 36,                           null: false
    t.string  "lifnr", limit: 90,                           null: false
    t.decimal "menge",             precision: 13, scale: 3, null: false
    t.string  "meins", limit: 27,                           null: false
    t.decimal "dmbtr",             precision: 13, scale: 2, null: false
    t.string  "kzbew", limit: 9,                            null: false
    t.decimal "rank"
  end

  add_index "sap_matnr_chargs", ["matnr", "charg"], name: "sap_matnr_chargs_1"

  create_table "sap_mseg_ekbe", id: false, force: :cascade do |t|
    t.string  "mandt",  limit: 27,  null: false
    t.string  "ebeln",  limit: 90,  null: false
    t.string  "ebelp",  limit: 45,  null: false
    t.string  "bwart",  limit: 27,  null: false
    t.string  "budat",  limit: 72,  null: false
    t.decimal "qty"
    t.decimal "docamt"
    t.string  "waers",  limit: 45,  null: false
    t.string  "matnr",  limit: 162, null: false
    t.string  "werks",  limit: 36,  null: false
    t.string  "charg",  limit: 90,  null: false
    t.string  "gjahr",  limit: 36,  null: false
    t.string  "belnr",  limit: 90,  null: false
    t.string  "buzei",  limit: 36,  null: false
  end

  create_table "sap_mseg_lips", id: false, force: :cascade do |t|
    t.decimal "id"
    t.string  "mandt", limit: 27,  null: false
    t.string  "mblnr", limit: 90,  null: false
    t.string  "zeile", limit: 36,  null: false
    t.string  "matnr", limit: 162, null: false
    t.string  "charg", limit: 90,  null: false
    t.string  "vbelv", limit: 90,  null: false
    t.string  "posnv", limit: 54,  null: false
    t.decimal "menge"
    t.string  "budat", limit: 72,  null: false
    t.string  "werks", limit: 36,  null: false
    t.string  "mjahr", limit: 36,  null: false
  end

  create_table "sap_plmz", id: false, force: :cascade do |t|
    t.string  "werks", limit: 36,  null: false
    t.string  "matnr", limit: 162, null: false
    t.string  "vornr", limit: 36,  null: false
    t.string  "ltxa1", limit: 360, null: false
    t.string  "arbpl", limit: 72,  null: false
    t.string  "atype", limit: 3
    t.string  "vtweg", limit: 2
    t.string  "stlnr", limit: 72,  null: false
    t.string  "stlkn", limit: 72,  null: false
    t.string  "datuv", limit: 72,  null: false
    t.string  "plnty", limit: 9,   null: false
    t.string  "plnnr", limit: 72,  null: false
    t.string  "plnkn", limit: 72,  null: false
    t.string  "plnal", limit: 18,  null: false
    t.string  "stlal", limit: 18,  null: false
    t.decimal "rank"
  end

  create_table "sap_v7_grns", id: false, force: :cascade do |t|
    t.string  "ebeln", limit: 90,                                         null: false
    t.string  "ebelp", limit: 45,                                         null: false
    t.string  "parvw", limit: 18,                                         null: false
    t.string  "lifn2", limit: 90,                                         null: false
    t.string  "werks", limit: 36,                                         null: false
    t.string  "lgort", limit: 36,                                         null: false
    t.string  "matnr", limit: 162,                                        null: false
    t.string  "budat", limit: 72,                                         null: false
    t.string  "gjahr", limit: 36,                                         null: false
    t.string  "belnr", limit: 90,                                         null: false
    t.string  "buzei", limit: 36,                                         null: false
    t.string  "waers", limit: 45,                                         null: false
    t.decimal "wrbtr",             precision: 13, scale: 2,               null: false
    t.decimal "menge",             precision: 13, scale: 3,               null: false
    t.string  "meins", limit: 27,                                         null: false
    t.decimal "netpr"
    t.string  "stopo", limit: 10,                           default: " "
    t.string  "stopi", limit: 5,                            default: " "
    t.string  "matn2", limit: 10,                           default: " "
    t.string  "maty2", limit: 4,                            default: " "
    t.string  "mati2", limit: 4,                            default: " "
  end

  create_table "sap_zieba003", id: false, force: :cascade do |t|
    t.string  "crtdate", limit: 8
    t.string  "bnarea",  limit: 36,                           null: false
    t.string  "bukrs",   limit: 36,                           null: false
    t.string  "connr",   limit: 180,                          null: false
    t.string  "matnr",   limit: 162,                          null: false
    t.string  "cbtyp",   limit: 9,                            null: false
    t.string  "cbseq",   limit: 36,                           null: false
    t.decimal "dlrat",               precision: 10, scale: 6, null: false
    t.string  "hscode",  limit: 90,                           null: false
    t.string  "hstxt",   limit: 360,                          null: false
    t.string  "smode",   limit: 540,                          null: false
    t.string  "deuom",   limit: 27,                           null: false
    t.string  "cutxt",   limit: 180,                          null: false
    t.string  "matkl",   limit: 81,                           null: false
    t.string  "mtart",   limit: 36,                           null: false
    t.string  "meins",   limit: 27,                           null: false
    t.decimal "netkg"
    t.string  "maktx",   limit: 360,                          null: false
  end

  create_table "systab", id: false, force: :cascade do |t|
    t.string   "objkey",     null: false
    t.string   "objval"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "systab", ["objkey"], name: "index_systab_on_objkey", unique: true

  create_table "t001", id: false, force: :cascade do |t|
    t.string "matnr", limit: 162, null: false
    t.string "prctr", limit: 90
  end

  add_index "t001", ["matnr"], name: "t00101"

  create_table "t002", id: false, force: :cascade do |t|
    t.string "matnr", limit: 162, null: false
    t.string "werks", limit: 36,  null: false
    t.string "budat", limit: 72
  end

  create_table "t003", id: false, force: :cascade do |t|
    t.string "matnr", limit: 162, null: false
    t.string "werks", limit: 36,  null: false
    t.string "ekgrp", limit: 27,  null: false
  end

  create_table "t004", id: false, force: :cascade do |t|
    t.string  "matkl", limit: 162, null: false
    t.decimal "pert"
  end

  create_table "t005", id: false, force: :cascade do |t|
    t.string  "mandt", limit: 27,  null: false
    t.string  "matnr", limit: 162, null: false
    t.string  "bwkey", limit: 36,  null: false
    t.string  "vprsv", limit: 9,   null: false
    t.decimal "verpr"
    t.decimal "zplp2"
    t.decimal "stprs"
    t.decimal "matam"
    t.decimal "labam"
    t.decimal "mcham"
    t.decimal "ovham"
    t.decimal "labhr"
    t.decimal "mchhr"
    t.decimal "ovhhr"
    t.string  "noprc", limit: 1
    t.decimal "mrate"
  end

  create_table "t010", id: false, force: :cascade do |t|
    t.string  "kyear",   limit: 4
    t.string  "mandt",   limit: 27,                           null: false
    t.string  "bzobj",   limit: 9,                            null: false
    t.string  "kalnr",   limit: 108,                          null: false
    t.string  "kadky",   limit: 72,                           null: false
    t.string  "kalka",   limit: 18,                           null: false
    t.string  "tvers",   limit: 18,                           null: false
    t.string  "bwvar",   limit: 27,                           null: false
    t.string  "kkzma",   limit: 9,                            null: false
    t.string  "werks",   limit: 36,                           null: false
    t.string  "matnr",   limit: 162,                          null: false
    t.decimal "losgr",               precision: 13, scale: 3, null: false
    t.string  "vornr",   limit: 36,                           null: false
    t.decimal "menge",               precision: 15, scale: 3, null: false
    t.string  "meeht",   limit: 27,                           null: false
    t.string  "kostl",   limit: 90,                           null: false
    t.string  "lstar",   limit: 54,                           null: false
    t.string  "arbid",   limit: 72,                           null: false
    t.string  "arbpl",   limit: 72
    t.string  "ktext",   limit: 360,                          null: false
    t.string  "veran",   limit: 27
    t.string  "spv/mgr", limit: 360
  end

  create_table "t011", id: false, force: :cascade do |t|
    t.string  "werks",     limit: 36,  null: false
    t.string  "matnr",     limit: 162, null: false
    t.decimal "old_labtm"
  end

  create_table "t012", id: false, force: :cascade do |t|
    t.string  "werks", limit: 36,  null: false
    t.string  "matnr", limit: 162, null: false
    t.decimal "labtm"
  end

  create_table "t100", id: false, force: :cascade do |t|
    t.string  "mandt", limit: 27,                           null: false
    t.string  "werks", limit: 36,                           null: false
    t.string  "matnr", limit: 162,                          null: false
    t.string  "keycn", limit: 90,                           null: false
    t.string  "mmsta", limit: 18,                           null: false
    t.string  "dispo", limit: 27,                           null: false
    t.string  "plaab", limit: 18,                           null: false
    t.string  "planr", limit: 180,                          null: false
    t.string  "sort0", limit: 72,                           null: false
    t.string  "delkz", limit: 18,                           null: false
    t.string  "extra", limit: 360,                          null: false
    t.string  "crdat", limit: 72,                           null: false
    t.string  "crtim", limit: 54,                           null: false
    t.string  "sort1", limit: 9,                            null: false
    t.string  "sort2", limit: 18,                           null: false
    t.string  "plumi", limit: 9,                            null: false
    t.string  "vrfkz", limit: 9,                            null: false
    t.string  "dat00", limit: 72,                           null: false
    t.string  "dat01", limit: 72,                           null: false
    t.string  "delb0", limit: 54,                           null: false
    t.string  "aussl", limit: 18,                           null: false
    t.string  "auskt", limit: 18,                           null: false
    t.decimal "mng01",             precision: 13, scale: 3, null: false
    t.decimal "mng02",             precision: 13, scale: 3, null: false
    t.decimal "mng03",             precision: 13, scale: 3, null: false
    t.integer "aline", limit: 10,  precision: 10,           null: false
    t.string  "lgort", limit: 36,                           null: false
    t.string  "umdat", limit: 72,                           null: false
    t.string  "lifnr", limit: 90,                           null: false
    t.string  "kunnr", limit: 90
    t.string  "mtart", limit: 36
  end

  create_table "t101", id: false, force: :cascade do |t|
    t.string  "matnr",    limit: 162, null: false
    t.string  "werks",    limit: 36,  null: false
    t.decimal "stkbal"
    t.decimal "received"
    t.decimal "issued"
  end

  create_table "t201", id: false, force: :cascade do |t|
    t.string  "mtart",  limit: 36
    t.string  "matkl",  limit: 81
    t.string  "matnr",  limit: 162
    t.string  "maktx",  limit: 360
    t.string  "werks",  limit: 36
    t.string  "charg",  limit: 90
    t.string  "meins",  limit: 27
    t.decimal "clabs",              precision: 13, scale: 3
    t.decimal "cumlm",              precision: 13, scale: 3
    t.decimal "cinsm",              precision: 13, scale: 3
    t.decimal "ceinm",              precision: 13, scale: 3
    t.decimal "cspem",              precision: 13, scale: 3
    t.decimal "cretm",              precision: 13, scale: 3
    t.decimal "stkqty"
    t.string  "aufnr",  limit: 108
  end

  create_table "t2012fc", id: false, force: :cascade do |t|
    t.string  "vtweg", limit: 18,  null: false
    t.string  "perbl", limit: 63,  null: false
    t.string  "artnr", limit: 162, null: false
    t.decimal "menge"
    t.string  "werks", limit: nil
  end

  create_table "t_locationinfo", id: false, force: :cascade do |t|
    t.string "locationinfo",     limit: 1800
    t.string "locationinfo_new", limit: 1800
  end

  create_table "taufm", id: false, force: :cascade do |t|
    t.string  "aufnr",  limit: 108, null: false
    t.string  "pmatnr", limit: 162, null: false
    t.string  "pwerks", limit: 36,  null: false
    t.string  "budat",  limit: 72,  null: false
    t.string  "bwart",  limit: 27,  null: false
    t.string  "matnr",  limit: 162, null: false
    t.string  "maktx",  limit: 360, null: false
    t.string  "matkl",  limit: 81,  null: false
    t.string  "cwerks", limit: 36,  null: false
    t.string  "charg",  limit: 90,  null: false
    t.decimal "dmbtr"
    t.string  "waers",  limit: 45,  null: false
    t.decimal "menge"
    t.string  "meins",  limit: 27,  null: false
    t.string  "ebeln",  limit: 90
  end

  create_table "taufnr", id: false, force: :cascade do |t|
    t.string "aufnr", limit: nil
  end

  create_table "tbom", id: false, force: :cascade do |t|
    t.string  "werks",  limit: 36,                 null: false
    t.string  "pmatnr", limit: 162,                null: false
    t.string  "pmaktx", limit: 540,                null: false
    t.string  "cmatnr", limit: 162,                null: false
    t.string  "cmaktx", limit: 540,                null: false
    t.string  "cmatkl", limit: 4000
    t.string  "cwerks", limit: 10
    t.string  "alpos",  limit: 9,                  null: false
    t.integer "ewahr",  limit: 3,    precision: 3, null: false
    t.string  "alpgr",  limit: 18,                 null: false
    t.decimal "dusage"
    t.string  "duom",   limit: 10
  end

  create_table "tbomh", id: false, force: :cascade do |t|
    t.string "werks", limit: nil
    t.string "matnr", limit: nil
  end

  create_table "tbsis", id: false, force: :cascade do |t|
    t.string "docnr",  limit: 90,  null: false
    t.string "bukrs",  limit: 36,  null: false
    t.string "ryear",  limit: 36,  null: false
    t.string "docln",  limit: 6,   null: false
    t.string "ozuonr", limit: 162, null: false
    t.string "ebeln",  limit: 10
    t.string "ebelp",  limit: 5
    t.string "zuonr",  limit: 30
  end

  create_table "tbsisa", id: false, force: :cascade do |t|
    t.string "docnr",  limit: 90,  null: false
    t.string "bukrs",  limit: 36,  null: false
    t.string "ryear",  limit: 36,  null: false
    t.string "docln",  limit: 6,   null: false
    t.string "ozuonr", limit: 162, null: false
    t.string "ebeln",  limit: 10
    t.string "ebelp",  limit: 5
    t.string "zuonr",  limit: 30
  end

  create_table "tccoma", id: false, force: :cascade do |t|
    t.string  "kpitno", limit: nil,                          null: false
    t.integer "kppcdt", limit: 8,   precision: 8
    t.decimal "kpca01",             precision: 17, scale: 6
    t.decimal "kpcb01",             precision: 17, scale: 6
    t.decimal "kpcb10",             precision: 17, scale: 6
    t.decimal "kpcd01",             precision: 17, scale: 6
    t.decimal "kptacl",             precision: 17, scale: 6
  end

  add_index "tccoma", ["kpitno", "\"KPPCDT\""], name: "tccoma"

  create_table "tchead", id: false, force: :cascade do |t|
    t.string  "koitno", limit: nil,                          null: false
    t.integer "kopcdt", limit: 8,   precision: 8
    t.decimal "kocsu9",             precision: 17, scale: 6
  end

  add_index "tchead", ["koitno", "\"KOPCDT\""], name: "tchead1"

  create_table "tcost", id: false, force: :cascade do |t|
    t.string  "matnr", limit: nil
    t.string  "werks", limit: nil
    t.decimal "matam"
    t.decimal "labam"
    t.decimal "mcham"
    t.decimal "ovham"
    t.string  "noprc", limit: 1
    t.string  "bwkey", limit: 36
  end

  create_table "tinfo", id: false, force: :cascade do |t|
    t.string  "infnr",      limit: 90,                            null: false
    t.string  "matnr",      limit: 162,                           null: false
    t.string  "lifnr",      limit: 90,                            null: false
    t.string  "urzla",      limit: 27,                            null: false
    t.string  "ekorg",      limit: 36,                            null: false
    t.string  "werks",      limit: 36,                            null: false
    t.string  "erdat",      limit: 72,                            null: false
    t.string  "ernam",      limit: 108,                           null: false
    t.string  "mwskz",      limit: 18,                            null: false
    t.string  "esokz",      limit: 9,                             null: false
    t.string  "datab",      limit: 32
    t.string  "datbi",      limit: 32
    t.string  "knumh",      limit: 40
    t.string  "kappl",      limit: 8
    t.string  "kschl",      limit: 16
    t.decimal "kbetr",                   precision: 11, scale: 2, null: false
    t.string  "konwa",      limit: 45,                            null: false
    t.integer "kpein",      limit: 5,    precision: 5,            null: false
    t.string  "kmein",      limit: 27,                            null: false
    t.decimal "shift"
    t.decimal "waers_desc"
    t.string  "lifnm",      limit: 315,                           null: false
    t.string  "mtart",      limit: 270,                           null: false
    t.string  "matkl",      limit: 4000
    t.string  "maktx",      limit: 540,                           null: false
    t.string  "rmbdate",    limit: 72
    t.decimal "rmbrate"
    t.string  "usddate",    limit: 72
    t.decimal "usdrate"
    t.decimal "rmbprice"
    t.decimal "usdprice"
    t.decimal "upf"
    t.decimal "upr"
    t.decimal "upu"
  end

  add_index "tinfo", ["matnr", "lifnr", "werks"], name: "tinfo_id01"

  create_table "tknvh", id: false, force: :cascade do |t|
    t.string "kunnr", limit: 90,  null: false
    t.string "csgrp", limit: 315
  end

  create_table "tknvp", id: false, force: :cascade do |t|
    t.string "kunnr", limit: 90,  null: false
    t.string "armgr", limit: 450
    t.string "srep2", limit: 450
  end

  create_table "tkunnr_matnr", id: false, force: :cascade do |t|
    t.string "matnr", limit: 162, null: false
    t.string "kunnr", limit: 90,  null: false
  end

  create_table "tmatnr_charg", id: false, force: :cascade do |t|
    t.string  "mblnr", limit: 90,  null: false
    t.string  "mjahr", limit: 36,  null: false
    t.string  "zeile", limit: 36,  null: false
    t.string  "budat", limit: 72,  null: false
    t.string  "cpudt", limit: 72,  null: false
    t.string  "cputm", limit: 54,  null: false
    t.string  "matnr", limit: 162, null: false
    t.string  "charg", limit: 90,  null: false
    t.string  "bwart", limit: 27,  null: false
    t.string  "aufnr", limit: 108, null: false
    t.string  "lifnr", limit: 90,  null: false
    t.string  "ebeln", limit: 90,  null: false
    t.string  "ebelp", limit: 45,  null: false
    t.decimal "rank"
  end

  create_table "tmatnr_kunnr", id: false, force: :cascade do |t|
    t.string  "vtweg", limit: 18,  null: false
    t.string  "vkorg", limit: 36,  null: false
    t.string  "kunnr", limit: 90,  null: false
    t.string  "matnr", limit: 162, null: false
    t.decimal "crate"
    t.string  "waerk", limit: 45,  null: false
    t.decimal "netpr"
    t.string  "vkgrp", limit: 27,  null: false
    t.string  "bezei", limit: 180, null: false
    t.string  "name1", limit: 315, null: false
    t.decimal "rank"
  end

  create_table "tmchb", id: false, force: :cascade do |t|
    t.string  "matnr", limit: 162, null: false
    t.string  "werks", limit: 36,  null: false
    t.string  "lgort", limit: 36,  null: false
    t.string  "charg", limit: 90,  null: false
    t.string  "matkl", limit: 81,  null: false
    t.string  "meins", limit: 27,  null: false
    t.decimal "qty"
    t.string  "vtweg", limit: 2
  end

  create_table "tminmax", id: false, force: :cascade do |t|
    t.string  "ctype",  limit: 3
    t.string  "matnr",  limit: 20
    t.string  "vtweg",  limit: 2
    t.decimal "minprc"
    t.decimal "maxprc"
  end

  create_table "tmittra", id: false, force: :cascade do |t|
    t.integer "rrn400", limit: 11,  precision: 11,           null: false
    t.integer "mtcono", limit: 3,   precision: 3
    t.string  "mtwhlo", limit: nil,                          null: false
    t.string  "mtitno", limit: nil,                          null: false
    t.integer "mtrgdt", limit: 8,   precision: 8
    t.integer "mtrgtm", limit: 6,   precision: 6
    t.integer "mttmsx", limit: 3,   precision: 3
    t.integer "mttrdt", limit: 8,   precision: 8
    t.string  "mtresp", limit: nil,                          null: false
    t.string  "mtttid", limit: nil,                          null: false
    t.string  "mttrtp", limit: nil,                          null: false
    t.integer "mtttyp", limit: 2,   precision: 2
    t.string  "mtsltp", limit: nil,                          null: false
    t.string  "mtwhsl", limit: nil,                          null: false
    t.string  "mtbano", limit: nil,                          null: false
    t.string  "mtcamu", limit: nil,                          null: false
    t.string  "mtbref", limit: nil,                          null: false
    t.string  "mtbre2", limit: nil,                          null: false
    t.string  "mtridn", limit: nil,                          null: false
    t.integer "mtrido", limit: 6,   precision: 6
    t.integer "mtridl", limit: 6,   precision: 6
    t.integer "mtridi", limit: 3,   precision: 3
    t.string  "mtrftx", limit: nil,                          null: false
    t.boolean "mtrorc", limit: nil
    t.string  "mtrorn", limit: nil,                          null: false
    t.integer "mtrorl", limit: 6,   precision: 6
    t.boolean "mtrprt", limit: nil
    t.string  "mtecve", limit: nil,                          null: false
    t.string  "mtstas", limit: nil,                          null: false
    t.decimal "mttrqt",             precision: 15, scale: 6
    t.decimal "mtnstq",             precision: 15, scale: 6
    t.decimal "mtnstt",             precision: 15, scale: 6
    t.integer "mtrepn", limit: 10,  precision: 10
    t.boolean "mtiner", limit: nil
    t.boolean "mttupc", limit: nil
    t.decimal "mttrpr",             precision: 17, scale: 6
    t.string  "mtacrf", limit: nil,                          null: false
    t.integer "mtanbr", limit: 9,   precision: 9
    t.decimal "mtmfco",             precision: 17, scale: 6
    t.decimal "mtstno",             precision: 15, scale: 6
    t.string  "mtproj", limit: nil,                          null: false
    t.string  "mtelno", limit: nil,                          null: false
    t.string  "mtrscd", limit: nil,                          null: false
    t.decimal "mtcawe",             precision: 15, scale: 6
    t.string  "mtnhai", limit: nil,                          null: false
    t.string  "mtnhsn", limit: nil,                          null: false
    t.integer "mtbirt", limit: 10,  precision: 10
    t.boolean "mtindi", limit: nil
    t.string  "mtcfgl", limit: nil,                          null: false
    t.boolean "mtloch", limit: nil
    t.integer "mtdeid", limit: 7,   precision: 7
    t.integer "jodate", limit: 8,   precision: 8
    t.integer "jotime", limit: 6,   precision: 6
  end

  create_table "tmkpf", id: false, force: :cascade do |t|
    t.string "awkey", limit: nil
  end

  create_table "tmrp", id: false, force: :cascade do |t|
    t.string  "werks", limit: 36,  null: false
    t.string  "matnr", limit: 162, null: false
    t.decimal "mng01"
  end

  create_table "tmseg", id: false, force: :cascade do |t|
    t.string "mandt", limit: 27,  null: false
    t.string "matnr", limit: 162, null: false
    t.string "charg", limit: 90,  null: false
    t.string "budat", limit: 72,  null: false
    t.string "mblnr", limit: 90,  null: false
    t.string "mjahr", limit: 36,  null: false
    t.string "zeile", limit: 36,  null: false
    t.string "aufnr", limit: 108, null: false
    t.string "ebeln", limit: 90,  null: false
    t.string "ebelp", limit: 45,  null: false
    t.string "werks", limit: 36,  null: false
    t.string "bwart", limit: 27,  null: false
    t.string "cpudt", limit: 72,  null: false
    t.string "cputm", limit: 54,  null: false
  end

  add_index "tmseg", ["matnr", "charg", "cpudt", "cputm"], name: "tmseg1"

  create_table "too1", id: false, force: :cascade do |t|
    t.string  "bwart",  limit: 27,  null: false
    t.string  "ebeln",  limit: 90,  null: false
    t.string  "ebelp",  limit: 45,  null: false
    t.string  "belnr",  limit: 90,  null: false
    t.string  "buzei",  limit: 36,  null: false
    t.string  "budat",  limit: 72,  null: false
    t.decimal "netpr"
    t.decimal "menge"
    t.decimal "wrbtr"
    t.string  "waers",  limit: 45,  null: false
    t.decimal "cnetpr"
    t.string  "shkzg",  limit: 9,   null: false
    t.string  "matnr",  limit: 162, null: false
    t.string  "matkl",  limit: 81,  null: false
    t.string  "maktx",  limit: 360
    t.string  "meins",  limit: 27,  null: false
    t.string  "wgbez",  limit: 180
    t.string  "hrktx",  limit: 360
    t.string  "werks",  limit: 36,  null: false
    t.string  "lifnr",  limit: 90,  null: false
    t.string  "bsart",  limit: 36,  null: false
    t.decimal "mrate"
    t.string  "vtweg",  limit: 2
    t.string  "ctype",  limit: 3
    t.string  "name1",  limit: 315, null: false
    t.string  "sortl",  limit: 90,  null: false
    t.decimal "usprc"
  end

  create_table "topenpo", id: false, force: :cascade do |t|
    t.string  "period",   limit: 24
    t.string  "bwart",    limit: 3
    t.string  "ebeln",    limit: 10
    t.string  "ebelp",    limit: 10
    t.string  "belnr",    limit: 1
    t.string  "buzei",    limit: 1
    t.string  "budat",    limit: 20
    t.decimal "netpr"
    t.decimal "menge"
    t.decimal "wrbtr"
    t.string  "waers",    limit: 45,   null: false
    t.decimal "cnetpr"
    t.string  "shkzg",    limit: 1
    t.string  "matnr",    limit: 20
    t.string  "matkl",    limit: 4000
    t.string  "maktx",    limit: 540,  null: false
    t.string  "meins",    limit: 27,   null: false
    t.string  "wgbez",    limit: 180
    t.string  "hrktx",    limit: 360
    t.string  "werks",    limit: 4
    t.string  "lifnr",    limit: 90,   null: false
    t.string  "bsart",    limit: 1
    t.decimal "mrate"
    t.string  "vtweg",    limit: 2
    t.string  "ctype",    limit: 3
    t.string  "name1",    limit: 315,  null: false
    t.string  "sortl",    limit: 90,   null: false
    t.decimal "usprc"
    t.string  "stdpo",    limit: 90
    t.string  "stdln",    limit: 45
    t.string  "stddt",    limit: 72
    t.string  "stdcur",   limit: 45
    t.decimal "stdprc"
    t.string  "stdsup",   limit: 90
    t.decimal "stdmrt"
    t.decimal "stdusprc"
    t.decimal "rcvamt"
    t.decimal "stdamt"
    t.decimal "difamt"
    t.decimal "difper"
    t.string  "samep",    limit: 1
  end

  create_table "tporcv", id: false, force: :cascade do |t|
    t.string  "bwart",  limit: 27,  null: false
    t.string  "ebeln",  limit: 90,  null: false
    t.string  "ebelp",  limit: 45,  null: false
    t.string  "belnr",  limit: 90,  null: false
    t.string  "buzei",  limit: 36,  null: false
    t.string  "budat",  limit: 72,  null: false
    t.decimal "netpr"
    t.decimal "menge"
    t.decimal "wrbtr"
    t.string  "waers",  limit: 45,  null: false
    t.decimal "cnetpr"
    t.string  "shkzg",  limit: 9,   null: false
    t.string  "matnr",  limit: 162, null: false
    t.string  "matkl",  limit: 81,  null: false
    t.string  "maktx",  limit: 360
    t.string  "meins",  limit: 27,  null: false
    t.string  "wgbez",  limit: 180
    t.string  "hrktx",  limit: 360
    t.string  "werks",  limit: 36,  null: false
    t.string  "lifnr",  limit: 90,  null: false
    t.string  "bsart",  limit: 36,  null: false
    t.decimal "mrate"
    t.string  "vtweg",  limit: 2
    t.string  "ctype",  limit: 3
    t.string  "name1",  limit: 315, null: false
    t.string  "sortl",  limit: 90,  null: false
    t.decimal "usprc"
  end

  create_table "trebate", id: false, force: :cascade do |t|
    t.string  "kschl", limit: 36,                           null: false
    t.string  "vkorg", limit: 36,                           null: false
    t.string  "kunnr", limit: 90,                           null: false
    t.string  "matnr", limit: 162,                          null: false
    t.string  "datab", limit: 72,                           null: false
    t.string  "datbi", limit: 72,                           null: false
    t.string  "knumh", limit: 90,                           null: false
    t.string  "krech", limit: 9,                            null: false
    t.decimal "kbetr",             precision: 11, scale: 2, null: false
    t.integer "kpein", limit: 5,   precision: 5,            null: false
    t.string  "kmein", limit: 27,                           null: false
    t.string  "konwa", limit: 45,                           null: false
  end

# Could not dump table "tsales" because of following StandardError
#   Unknown type 'UROWID' for column 'id'

  create_table "tsales1", id: false, force: :cascade do |t|
    t.string  "vrgar",    limit: 9,                            null: false
    t.string  "perio",    limit: 63,                           null: false
    t.string  "budat",    limit: 72,                           null: false
    t.string  "belnr",    limit: 90,                           null: false
    t.string  "gjahr",    limit: 36,                           null: false
    t.string  "artnr",    limit: 162,                          null: false
    t.string  "bukrs",    limit: 36,                           null: false
    t.string  "werks",    limit: 36,                           null: false
    t.string  "vtweg",    limit: 18,                           null: false
    t.string  "kstar",    limit: 90,                           null: false
    t.string  "ktext",    limit: 180
    t.string  "prctr",    limit: 90,                           null: false
    t.string  "matkl",    limit: 81
    t.string  "kaufn",    limit: 90,                           null: false
    t.string  "kdpos",    limit: 54,                           null: false
    t.string  "kunnr",    limit: 90,                           null: false
    t.string  "sortl",    limit: 90
    t.string  "name1",    limit: 315
    t.string  "csgrp",    limit: 315
    t.string  "armgr",    limit: 450
    t.string  "srep2",    limit: 450
    t.string  "brand",    limit: 360
    t.string  "ewbez",    limit: 180
    t.decimal "x"
    t.decimal "y"
    t.decimal "z"
    t.decimal "aa"
    t.decimal "ab"
    t.decimal "ac"
    t.decimal "ad"
    t.decimal "ae"
    t.decimal "af"
    t.decimal "ag"
    t.decimal "銷貨收入",                 precision: 15, scale: 2, null: false
    t.decimal "銷售收入_m",               precision: 15, scale: 2, null: false
    t.decimal "銷貨退回",                 precision: 15, scale: 2, null: false
    t.decimal "銷貨折讓",                 precision: 15, scale: 2, null: false
    t.decimal "銷貨成本_r"
    t.decimal "銷貨成本_m",               precision: 15, scale: 2, null: false
    t.decimal "價差成本",                 precision: 15, scale: 2, null: false
    t.decimal "標準成本_料",               precision: 15, scale: 2, null: false
    t.decimal "標準成本_工",               precision: 15, scale: 2, null: false
    t.decimal "標準成本_機",               precision: 15, scale: 2, null: false
    t.decimal "標準成本_費",               precision: 15, scale: 2, null: false
    t.decimal "標準成本_外",               precision: 15, scale: 2, null: false
    t.decimal "實際差異_料",               precision: 15, scale: 2, null: false
    t.decimal "實際差異_工",               precision: 15, scale: 2, null: false
    t.decimal "實際差異_機",               precision: 15, scale: 2, null: false
    t.decimal "實際差異_費",               precision: 15, scale: 2, null: false
    t.decimal "實際差異_外",               precision: 15, scale: 2, null: false
    t.decimal "存貨盤盈虧",                precision: 15, scale: 2, null: false
    t.decimal "存貨報廢損失",               precision: 15, scale: 2, null: false
    t.decimal "存貨呆滯損失",               precision: 15, scale: 2, null: false
    t.decimal "未實現毛利",                precision: 15, scale: 2, null: false
    t.decimal "已實現毛利",                precision: 15, scale: 2, null: false
    t.decimal "請款數量",                 precision: 15, scale: 3, null: false
    t.decimal "stdusprc"
    t.decimal "rebate"
    t.decimal "scom"
    t.string  "利潤中心",     limit: nil
    t.string  "季度",       limit: nil
  end

# Could not dump table "tsales2" because of following StandardError
#   Unknown type 'UROWID' for column 'id'

  create_table "tsap_eina", id: false, force: :cascade do |t|
    t.string "matnr", limit: 162, null: false
    t.string "erdat", limit: 72
  end

  create_table "tvbak", id: false, force: :cascade do |t|
    t.string "auart", limit: 36,  null: false
    t.string "artnr", limit: 162, null: false
    t.string "charg", limit: 90
    t.string "aufnr", limit: 108
  end

  create_table "tvkgrp", id: false, force: :cascade do |t|
    t.string "vkgrp",   limit: 30
    t.string "grpname", limit: 30
    t.string "armgr",   limit: 30
  end

  create_table "txsales", id: false, force: :cascade do |t|
    t.string  "vrgar",  limit: 9,                            null: false
    t.string  "perio",  limit: 63,                           null: false
    t.string  "budat",  limit: 72,                           null: false
    t.string  "belnr",  limit: 90,                           null: false
    t.string  "gjahr",  limit: 36,                           null: false
    t.string  "artnr",  limit: 162,                          null: false
    t.string  "bukrs",  limit: 36,                           null: false
    t.string  "werks",  limit: 36,                           null: false
    t.string  "vtweg",  limit: 18,                           null: false
    t.string  "kstar",  limit: 90,                           null: false
    t.string  "ktext",  limit: 180
    t.string  "prctr",  limit: 90,                           null: false
    t.string  "matkl",  limit: 81
    t.string  "kaufn",  limit: 90,                           null: false
    t.string  "kdpos",  limit: 54,                           null: false
    t.string  "kunnr",  limit: 90
    t.string  "sortl",  limit: 90
    t.string  "name1",  limit: 315
    t.string  "csgrp",  limit: 315
    t.string  "armgr",  limit: 450
    t.string  "srep2",  limit: 450
    t.string  "brand",  limit: 360
    t.string  "ewbez",  limit: 180
    t.decimal "銷貨收入",               precision: 15, scale: 2, null: false
    t.decimal "銷售收入_m",             precision: 15, scale: 2, null: false
    t.decimal "銷貨退回",               precision: 15, scale: 2, null: false
    t.decimal "銷貨折讓"
    t.decimal "銷貨成本_r"
    t.decimal "銷貨成本_m",             precision: 15, scale: 2, null: false
    t.decimal "價差成本",               precision: 15, scale: 2, null: false
    t.decimal "標準成本_料",             precision: 15, scale: 2, null: false
    t.decimal "標準成本_工",             precision: 15, scale: 2, null: false
    t.decimal "標準成本_機",             precision: 15, scale: 2, null: false
    t.decimal "標準成本_費",             precision: 15, scale: 2, null: false
    t.decimal "標準成本_外",             precision: 15, scale: 2, null: false
    t.decimal "實際差異_料",             precision: 15, scale: 2, null: false
    t.decimal "實際差異_工",             precision: 15, scale: 2, null: false
    t.decimal "實際差異_機",             precision: 15, scale: 2, null: false
    t.decimal "實際差異_費",             precision: 15, scale: 2, null: false
    t.decimal "實際差異_外",             precision: 15, scale: 2, null: false
    t.decimal "存貨盤盈虧",              precision: 15, scale: 2, null: false
    t.decimal "存貨報廢損失",             precision: 15, scale: 2, null: false
    t.decimal "存貨呆滯損失",             precision: 15, scale: 2, null: false
    t.decimal "未實現毛利",              precision: 15, scale: 2, null: false
    t.decimal "已實現毛利",              precision: 15, scale: 2, null: false
    t.decimal "請款數量",               precision: 15, scale: 3, null: false
  end

  create_table "tzapdlf", id: false, force: :cascade do |t|
    t.integer "rrn400", limit: 11,  precision: 11,           null: false
    t.integer "dlperd", limit: 6,   precision: 6
    t.string  "dlwhlo", limit: nil,                          null: false
    t.string  "dlsuno", limit: nil,                          null: false
    t.string  "dlitno", limit: nil,                          null: false
    t.string  "dlpuno", limit: nil,                          null: false
    t.integer "dlpnli", limit: 3,   precision: 3
    t.integer "dlpnls", limit: 3,   precision: 3
    t.integer "dlpnlx", limit: 3,   precision: 3
    t.integer "dlrepn", limit: 10,  precision: 10
    t.string  "dlsudo", limit: nil,                          null: false
    t.string  "dlpuos", limit: nil,                          null: false
    t.decimal "dlrate",             precision: 11, scale: 6
    t.string  "dlpotc", limit: nil,                          null: false
    t.string  "dlactp", limit: nil,                          null: false
    t.integer "dltrdt", limit: 8,   precision: 8
    t.decimal "dlrpqt",             precision: 15, scale: 6
    t.decimal "dlstuc",             precision: 17, scale: 6
    t.decimal "dlstux",             precision: 17, scale: 6
    t.decimal "dlpupr",             precision: 17, scale: 6
    t.string  "dlcucd", limit: nil,                          null: false
    t.string  "dlptcd", limit: nil,                          null: false
    t.decimal "dlprcf",             precision: 15, scale: 9
    t.string  "dlagnb", limit: nil,                          null: false
    t.decimal "dlagpr",             precision: 17, scale: 6
    t.decimal "dlagcf",             precision: 15, scale: 9
    t.decimal "dlpypr",             precision: 17, scale: 6
    t.decimal "dlstda",             precision: 15, scale: 2
    t.decimal "dlacta",             precision: 15, scale: 2
    t.decimal "dlvata",             precision: 15, scale: 2
    t.decimal "dlppva",             precision: 15, scale: 2
    t.string  "dldivi", limit: nil,                          null: false
    t.string  "dlivno", limit: nil,                          null: false
    t.integer "dlacdt", limit: 8,   precision: 8
    t.integer "dlrgdt", limit: 8,   precision: 8
    t.integer "dlrgtm", limit: 6,   precision: 6
    t.integer "dlmldt", limit: 8,   precision: 8
    t.string  "dlbano", limit: nil,                          null: false
    t.string  "dlbref", limit: nil,                          null: false
    t.integer "jodate", limit: 8,   precision: 8
    t.integer "jotime", limit: 6,   precision: 6
  end

  create_table "tzekbe", id: false, force: :cascade do |t|
    t.decimal "id"
    t.string  "bwart",  limit: 27,  null: false
    t.string  "ebeln",  limit: 90,  null: false
    t.string  "ebelp",  limit: 45,  null: false
    t.string  "belnr",  limit: 90,  null: false
    t.string  "buzei",  limit: 36,  null: false
    t.string  "budat",  limit: 72,  null: false
    t.decimal "netpr"
    t.decimal "menge"
    t.decimal "wrbtr"
    t.string  "waers",  limit: 45,  null: false
    t.decimal "cnetpr"
    t.string  "shkzg",  limit: 9,   null: false
    t.string  "matnr",  limit: 162, null: false
    t.string  "matkl",  limit: 81,  null: false
    t.string  "maktx",  limit: 360
    t.string  "meins",  limit: 27,  null: false
    t.string  "wgbez",  limit: 180
    t.string  "hrktx",  limit: 360
    t.string  "werks",  limit: 36,  null: false
    t.string  "lifnr",  limit: 90,  null: false
    t.string  "bsart",  limit: 36,  null: false
    t.decimal "mrate"
    t.string  "vtweg",  limit: 2
    t.string  "ctype",  limit: 3
    t.string  "name1",  limit: 315, null: false
    t.string  "sortl",  limit: 90,  null: false
    t.decimal "usprc"
  end

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

  create_table "users_old", primary_key: "userid", force: :cascade do |t|
    t.string "password", limit: 128
    t.string "email",    limit: 60
    t.string "name",     limit: 128
    t.string "manager",  limit: 30
    t.string "status",   limit: 1
    t.string "crtdt",    limit: 8
    t.string "chgdt",    limit: 8
    t.string "admin",    limit: 1
  end

  create_table "vbmat2011", id: false, force: :cascade do |t|
    t.string  "werks",  limit: 36,                            null: false
    t.string  "pmatnr", limit: 162,                           null: false
    t.string  "pmaktx", limit: 540,                           null: false
    t.string  "pmatkl", limit: 4000
    t.string  "cmatnr", limit: 162,                           null: false
    t.string  "cmaktx", limit: 540,                           null: false
    t.string  "cmatkl", limit: 4000
    t.string  "cwerks", limit: 10
    t.decimal "menge"
    t.string  "duom",   limit: 10
    t.string  "alpgr",  limit: 18,                            null: false
    t.string  "alpos",  limit: 9,                             null: false
    t.integer "ewahr",  limit: 3,    precision: 3,            null: false
    t.string  "vprsv",  limit: 9,                             null: false
    t.decimal "verpr",               precision: 11, scale: 2, null: false
    t.decimal "stprs",               precision: 11, scale: 2, null: false
    t.integer "peinh",  limit: 5,    precision: 5,            null: false
    t.decimal "zplp2",               precision: 11, scale: 2, null: false
    t.decimal "matpr"
    t.string  "prsrc",  limit: 30
  end

  create_table "vbope2011", id: false, force: :cascade do |t|
    t.string  "matnr", limit: 162,                          null: false
    t.string  "werks", limit: 36,                           null: false
    t.string  "arbid", limit: 72,                           null: false
    t.string  "arbpl", limit: 72,                           null: false
    t.string  "verwe", limit: 36,                           null: false
    t.string  "ltxa1", limit: 360,                          null: false
    t.decimal "bmsch",             precision: 13, scale: 3, null: false
    t.decimal "vgw01",             precision: 9,  scale: 3, null: false
    t.decimal "vgw02",             precision: 9,  scale: 3, null: false
    t.decimal "vgw03",             precision: 9,  scale: 3, null: false
    t.decimal "vgw04",             precision: 9,  scale: 3, null: false
    t.decimal "vgw05",             precision: 9,  scale: 3, null: false
    t.decimal "vgw06",             precision: 9,  scale: 3, null: false
    t.string  "vornr", limit: 36,                           null: false
    t.string  "lanum", limit: 36,                           null: false
    t.string  "kokrs", limit: 36,                           null: false
    t.string  "kostl", limit: 90,                           null: false
    t.string  "lstar", limit: 54,                           null: false
    t.string  "objnr", limit: 198,                          null: false
    t.decimal "lrate"
    t.decimal "opehr"
  end

  create_table "wcusmat", id: false, force: :cascade do |t|
    t.string "matnr", limit: nil
    t.string "kunnr", limit: nil
  end

  create_table "wlot", force: :cascade do |t|
    t.string   "matnr", limit: nil, default: ""
    t.string   "charg", limit: nil, default: ""
    t.string   "aufnr", limit: nil, default: ""
    t.string   "ebeln", limit: nil, default: ""
    t.string   "ebelp", limit: nil, default: ""
    t.string   "mblnr", limit: nil, default: ""
    t.string   "mjahr", limit: nil, default: ""
    t.string   "zeile", limit: nil, default: ""
    t.datetime "erdat"
  end

  add_index "wlot", ["matnr", "charg"], name: "wlot_id01"

  create_table "wsdprc", id: false, force: :cascade do |t|
    t.string  "vbeln", limit: 90,  null: false
    t.string  "fkdat", limit: 72,  null: false
    t.string  "waerk", limit: 45,  null: false
    t.string  "vkorg", limit: 36,  null: false
    t.string  "vtweg", limit: 18,  null: false
    t.string  "vkgrp", limit: 27,  null: false
    t.string  "aubel", limit: 90,  null: false
    t.string  "aupos", limit: 54,  null: false
    t.string  "matnr", limit: 162, null: false
    t.string  "arktx", limit: 360, null: false
    t.string  "kunnr", limit: 90,  null: false
    t.decimal "netpr"
    t.decimal "usprc"
  end

  create_table "wsdprc_1", id: false, force: :cascade do |t|
    t.string  "vbeln", limit: 90,  null: false
    t.string  "fkdat", limit: 72,  null: false
    t.string  "waerk", limit: 45,  null: false
    t.string  "vkorg", limit: 36,  null: false
    t.string  "vtweg", limit: 18,  null: false
    t.string  "vkgrp", limit: 27,  null: false
    t.string  "aubel", limit: 90,  null: false
    t.string  "aupos", limit: 54,  null: false
    t.string  "matnr", limit: 162, null: false
    t.string  "arktx", limit: 360, null: false
    t.string  "kunnr", limit: 90,  null: false
    t.decimal "netpr"
    t.decimal "usprc"
  end

  create_table "zapdlft", id: false, force: :cascade do |t|
    t.integer "dlperd", limit: 6,   precision: 6
    t.string  "dlwhlo", limit: nil,                          null: false
    t.string  "dlitno", limit: nil,                          null: false
    t.string  "dlpuno", limit: nil,                          null: false
    t.integer "dlpnli", limit: 3,   precision: 3
    t.string  "dlsuno", limit: nil,                          null: false
    t.integer "dltrdt", limit: 8,   precision: 8
    t.decimal "dlrpqt",             precision: 15, scale: 6
    t.string  "dlbano", limit: nil,                          null: false
    t.decimal "dlpupr",             precision: 17, scale: 6
    t.string  "dlcucd", limit: nil,                          null: false
  end

  create_table "zconvert701a381a", id: false, force: :cascade do |t|
    t.string "ebeln", limit: 90, null: false
  end

  create_table "zconvert701a381a_ekes", id: false, force: :cascade do |t|
    t.string  "mandt",     limit: 27,                           null: false
    t.string  "ebeln",     limit: 90,                           null: false
    t.string  "ebelp",     limit: 45,                           null: false
    t.string  "etens",     limit: 36,                           null: false
    t.string  "ebtyp",     limit: 18,                           null: false
    t.string  "eindt",     limit: 72,                           null: false
    t.string  "lpein",     limit: 9,                            null: false
    t.string  "uzeit",     limit: 54,                           null: false
    t.string  "erdat",     limit: 72,                           null: false
    t.string  "ezeit",     limit: 54,                           null: false
    t.decimal "menge",                 precision: 13, scale: 3, null: false
    t.decimal "dabmg",                 precision: 13, scale: 3, null: false
    t.string  "estkz",     limit: 9,                            null: false
    t.string  "loekz",     limit: 9,                            null: false
    t.string  "kzdis",     limit: 9,                            null: false
    t.string  "xblnr",     limit: 315,                          null: false
    t.string  "vbeln",     limit: 90,                           null: false
    t.string  "vbelp",     limit: 54,                           null: false
    t.string  "mprof",     limit: 36,                           null: false
    t.string  "ematn",     limit: 162,                          null: false
    t.integer "mahnz",     limit: 3,   precision: 3,            null: false
    t.string  "charg",     limit: 90,                           null: false
    t.string  "uecha",     limit: 54,                           null: false
    t.string  "ref_etens", limit: 36,                           null: false
    t.string  "imwrk",     limit: 9,                            null: false
  end

  create_table "zcost2011", id: false, force: :cascade do |t|
    t.string  "mandt", limit: 27,  null: false
    t.string  "matnr", limit: 162, null: false
    t.string  "bwkey", limit: 36,  null: false
    t.string  "vprsv", limit: 9,   null: false
    t.decimal "verpr"
    t.decimal "stprs"
    t.decimal "matam"
    t.decimal "labam"
    t.decimal "mcham"
    t.decimal "ovham"
    t.decimal "labhr"
    t.decimal "mchhr"
    t.decimal "ovhhr"
  end

  create_table "zcost_20151113", id: false, force: :cascade do |t|
    t.string  "mandt", limit: 27,  null: false
    t.string  "matnr", limit: 162, null: false
    t.string  "bwkey", limit: 36,  null: false
    t.string  "vprsv", limit: 9,   null: false
    t.decimal "verpr"
    t.decimal "zplp2"
    t.decimal "stprs"
    t.decimal "matam"
    t.decimal "labam"
    t.decimal "mcham"
    t.decimal "ovham"
    t.decimal "labhr"
    t.decimal "mchhr"
    t.decimal "ovhhr"
    t.string  "noprc", limit: 1
    t.decimal "mrate"
  end

  create_table "zcost_tmp", id: false, force: :cascade do |t|
    t.string  "mandt", limit: 27,  null: false
    t.string  "matnr", limit: 162, null: false
    t.string  "bwkey", limit: 36,  null: false
    t.string  "vprsv", limit: 9,   null: false
    t.decimal "verpr"
    t.decimal "zplp2"
    t.decimal "stprs"
    t.decimal "matam"
    t.decimal "labam"
    t.decimal "mcham"
    t.decimal "ovham"
    t.decimal "labhr"
    t.decimal "mchhr"
    t.decimal "ovhhr"
    t.string  "noprc", limit: 1
    t.decimal "mrate"
  end

  create_table "zekbe", id: false, force: :cascade do |t|
    t.string  "bwart",  limit: 27,  null: false
    t.string  "ebeln",  limit: 90,  null: false
    t.string  "ebelp",  limit: 45,  null: false
    t.string  "belnr",  limit: 90,  null: false
    t.string  "buzei",  limit: 36,  null: false
    t.string  "budat",  limit: 72,  null: false
    t.decimal "netpr"
    t.decimal "menge"
    t.decimal "wrbtr"
    t.string  "waers",  limit: 45,  null: false
    t.decimal "cnetpr"
    t.string  "shkzg",  limit: 9,   null: false
    t.string  "matnr",  limit: 162, null: false
    t.string  "matkl",  limit: 81,  null: false
    t.string  "maktx",  limit: 360
    t.string  "meins",  limit: 27,  null: false
    t.string  "wgbez",  limit: 180
    t.string  "hrktx",  limit: 360
    t.string  "werks",  limit: 36,  null: false
    t.string  "lifnr",  limit: 90,  null: false
    t.string  "bsart",  limit: 36,  null: false
    t.decimal "mrate"
    t.string  "vtweg",  limit: 2
    t.string  "ctype",  limit: 3
    t.string  "name1",  limit: 315, null: false
    t.string  "sortl",  limit: 90,  null: false
    t.decimal "usprc"
  end

  create_table "zekbe2011", id: false, force: :cascade do |t|
    t.string  "bwart",  limit: 27,                           null: false
    t.string  "ebeln",  limit: 90,                           null: false
    t.string  "ebelp",  limit: 45,                           null: false
    t.string  "belnr",  limit: 90,                           null: false
    t.string  "buzei",  limit: 36,                           null: false
    t.string  "budat",  limit: 72,                           null: false
    t.decimal "netpr",              precision: 13, scale: 6
    t.decimal "menge",              precision: 13, scale: 3, null: false
    t.decimal "wrbtr",              precision: 13, scale: 2, null: false
    t.string  "waers",  limit: 45,                           null: false
    t.decimal "cnetpr",             precision: 13, scale: 6
    t.string  "shkzg",  limit: 9,                            null: false
    t.string  "matnr",  limit: 162,                          null: false
    t.string  "matkl",  limit: 81,                           null: false
    t.string  "maktx",  limit: 360
    t.string  "meins",  limit: 27,                           null: false
    t.string  "wgbez",  limit: 180
    t.string  "hrktx",  limit: 360
    t.string  "werks",  limit: 36,                           null: false
    t.string  "lifnr",  limit: 90,                           null: false
    t.string  "bsart",  limit: 36,                           null: false
    t.decimal "mrate"
    t.string  "vtweg",  limit: 2
    t.string  "ctype",  limit: 3
    t.string  "name1",  limit: 315,                          null: false
    t.string  "sortl",  limit: 90,                           null: false
    t.decimal "usprc"
  end

  create_table "zekbe2012", id: false, force: :cascade do |t|
    t.string  "bwart",  limit: 27,  null: false
    t.string  "ebeln",  limit: 90,  null: false
    t.string  "ebelp",  limit: 45,  null: false
    t.string  "belnr",  limit: 90,  null: false
    t.string  "buzei",  limit: 36,  null: false
    t.string  "budat",  limit: 72,  null: false
    t.decimal "netpr"
    t.decimal "menge"
    t.decimal "wrbtr"
    t.string  "waers",  limit: 45,  null: false
    t.decimal "cnetpr"
    t.string  "shkzg",  limit: 9,   null: false
    t.string  "matnr",  limit: 162, null: false
    t.string  "matkl",  limit: 81,  null: false
    t.string  "maktx",  limit: 360
    t.string  "meins",  limit: 27,  null: false
    t.string  "wgbez",  limit: 180
    t.string  "hrktx",  limit: 360
    t.string  "werks",  limit: 36,  null: false
    t.string  "lifnr",  limit: 90,  null: false
    t.string  "bsart",  limit: 36,  null: false
    t.decimal "mrate"
    t.string  "vtweg",  limit: 2
    t.string  "ctype",  limit: 3
    t.string  "name1",  limit: 315, null: false
    t.string  "sortl",  limit: 90,  null: false
    t.decimal "usprc"
  end

  create_table "zekbe2013", id: false, force: :cascade do |t|
    t.string  "bwart",  limit: 27,  null: false
    t.string  "ebeln",  limit: 90,  null: false
    t.string  "ebelp",  limit: 45,  null: false
    t.string  "belnr",  limit: 90,  null: false
    t.string  "buzei",  limit: 36,  null: false
    t.string  "budat",  limit: 72,  null: false
    t.decimal "netpr"
    t.decimal "menge"
    t.decimal "wrbtr"
    t.string  "waers",  limit: 45,  null: false
    t.decimal "cnetpr"
    t.string  "shkzg",  limit: 9,   null: false
    t.string  "matnr",  limit: 162, null: false
    t.string  "matkl",  limit: 81,  null: false
    t.string  "maktx",  limit: 360
    t.string  "meins",  limit: 27,  null: false
    t.string  "wgbez",  limit: 180
    t.string  "hrktx",  limit: 360
    t.string  "werks",  limit: 36,  null: false
    t.string  "lifnr",  limit: 90,  null: false
    t.string  "bsart",  limit: 36,  null: false
    t.decimal "mrate"
    t.string  "vtweg",  limit: 2
    t.string  "ctype",  limit: 3
    t.string  "name1",  limit: 315, null: false
    t.string  "sortl",  limit: 90,  null: false
    t.decimal "usprc"
  end

  add_index "zekbe2013", ["matnr", "vtweg", "ctype"], name: "zekbe2013_idx01"

  create_table "zekbe2013h", id: false, force: :cascade do |t|
    t.string  "bwart",  limit: 27,  null: false
    t.string  "ebeln",  limit: 90,  null: false
    t.string  "ebelp",  limit: 45,  null: false
    t.string  "belnr",  limit: 90,  null: false
    t.string  "buzei",  limit: 36,  null: false
    t.string  "budat",  limit: 72,  null: false
    t.decimal "netpr"
    t.decimal "menge"
    t.decimal "wrbtr"
    t.string  "waers",  limit: 45,  null: false
    t.decimal "cnetpr"
    t.string  "shkzg",  limit: 9,   null: false
    t.string  "matnr",  limit: 162, null: false
    t.string  "matkl",  limit: 81,  null: false
    t.string  "maktx",  limit: 360
    t.string  "meins",  limit: 27,  null: false
    t.string  "wgbez",  limit: 180
    t.string  "hrktx",  limit: 360
    t.string  "werks",  limit: 36,  null: false
    t.string  "lifnr",  limit: 90,  null: false
    t.string  "bsart",  limit: 36,  null: false
    t.decimal "mrate"
    t.string  "vtweg",  limit: 2
    t.string  "ctype",  limit: 3
    t.string  "name1",  limit: 315, null: false
    t.string  "sortl",  limit: 90,  null: false
    t.decimal "usprc"
  end

  create_table "zekbe2014", id: false, force: :cascade do |t|
    t.string  "bwart",  limit: 27,  null: false
    t.string  "ebeln",  limit: 90,  null: false
    t.string  "ebelp",  limit: 45,  null: false
    t.string  "belnr",  limit: 90,  null: false
    t.string  "buzei",  limit: 36,  null: false
    t.string  "budat",  limit: 72,  null: false
    t.decimal "netpr"
    t.decimal "menge"
    t.decimal "wrbtr"
    t.string  "waers",  limit: 45,  null: false
    t.decimal "cnetpr"
    t.string  "shkzg",  limit: 9,   null: false
    t.string  "matnr",  limit: 162, null: false
    t.string  "matkl",  limit: 81,  null: false
    t.string  "maktx",  limit: 360
    t.string  "meins",  limit: 27,  null: false
    t.string  "wgbez",  limit: 180
    t.string  "hrktx",  limit: 360
    t.string  "werks",  limit: 36,  null: false
    t.string  "lifnr",  limit: 90,  null: false
    t.string  "bsart",  limit: 36,  null: false
    t.decimal "mrate"
    t.string  "vtweg",  limit: 2
    t.string  "ctype",  limit: 3
    t.string  "name1",  limit: 315, null: false
    t.string  "sortl",  limit: 90,  null: false
    t.decimal "usprc"
  end

  add_index "zekbe2014", ["vtweg", "ctype", "matnr"], name: "zekbe2014_a"

  create_table "zekbe2014_migo", id: false, force: :cascade do |t|
    t.string  "bwart",  limit: 27,  null: false
    t.string  "ebeln",  limit: 90,  null: false
    t.string  "ebelp",  limit: 45,  null: false
    t.string  "belnr",  limit: 90,  null: false
    t.string  "buzei",  limit: 36,  null: false
    t.string  "budat",  limit: 72,  null: false
    t.decimal "netpr"
    t.decimal "menge"
    t.decimal "wrbtr"
    t.string  "waers",  limit: 45,  null: false
    t.decimal "cnetpr"
    t.string  "shkzg",  limit: 9,   null: false
    t.string  "matnr",  limit: 162, null: false
    t.string  "matkl",  limit: 81,  null: false
    t.string  "maktx",  limit: 360
    t.string  "meins",  limit: 27,  null: false
    t.string  "wgbez",  limit: 180
    t.string  "hrktx",  limit: 360
    t.string  "werks",  limit: 36,  null: false
    t.string  "lifnr",  limit: 90,  null: false
    t.string  "bsart",  limit: 36,  null: false
    t.decimal "mrate"
    t.string  "vtweg",  limit: 2
    t.string  "ctype",  limit: 3
    t.string  "name1",  limit: 315, null: false
    t.string  "sortl",  limit: 90,  null: false
    t.decimal "usprc"
  end

  create_table "zekbe2015", id: false, force: :cascade do |t|
    t.string  "bwart",  limit: 27,  null: false
    t.string  "ebeln",  limit: 90,  null: false
    t.string  "ebelp",  limit: 45,  null: false
    t.string  "belnr",  limit: 90,  null: false
    t.string  "buzei",  limit: 36,  null: false
    t.string  "budat",  limit: 72,  null: false
    t.decimal "netpr"
    t.decimal "menge"
    t.decimal "wrbtr"
    t.string  "waers",  limit: 45,  null: false
    t.decimal "cnetpr"
    t.string  "shkzg",  limit: 9,   null: false
    t.string  "matnr",  limit: 162, null: false
    t.string  "matkl",  limit: 81,  null: false
    t.string  "maktx",  limit: 360
    t.string  "meins",  limit: 27,  null: false
    t.string  "wgbez",  limit: 180
    t.string  "hrktx",  limit: 360
    t.string  "werks",  limit: 36,  null: false
    t.string  "lifnr",  limit: 90,  null: false
    t.string  "bsart",  limit: 36,  null: false
    t.decimal "mrate"
    t.string  "vtweg",  limit: 2
    t.string  "ctype",  limit: 3
    t.string  "name1",  limit: 315, null: false
    t.string  "sortl",  limit: 90,  null: false
    t.decimal "usprc"
  end

  add_index "zekbe2015", ["matnr", "vtweg", "ctype"], name: "zekbe201501"

  create_table "zekbe2015h", id: false, force: :cascade do |t|
    t.string  "bwart",  limit: 27,  null: false
    t.string  "ebeln",  limit: 90,  null: false
    t.string  "ebelp",  limit: 45,  null: false
    t.string  "belnr",  limit: 90,  null: false
    t.string  "buzei",  limit: 36,  null: false
    t.string  "budat",  limit: 72,  null: false
    t.decimal "netpr"
    t.decimal "menge"
    t.decimal "wrbtr"
    t.string  "waers",  limit: 45,  null: false
    t.decimal "cnetpr"
    t.string  "shkzg",  limit: 9,   null: false
    t.string  "matnr",  limit: 162, null: false
    t.string  "matkl",  limit: 81,  null: false
    t.string  "maktx",  limit: 360
    t.string  "meins",  limit: 27,  null: false
    t.string  "wgbez",  limit: 180
    t.string  "hrktx",  limit: 360
    t.string  "werks",  limit: 36,  null: false
    t.string  "lifnr",  limit: 90,  null: false
    t.string  "bsart",  limit: 36,  null: false
    t.decimal "mrate"
    t.string  "vtweg",  limit: 2
    t.string  "ctype",  limit: 3
    t.string  "name1",  limit: 315, null: false
    t.string  "sortl",  limit: 90,  null: false
    t.decimal "usprc"
  end

  create_table "zekbe2016", id: false, force: :cascade do |t|
    t.string  "bwart",  limit: 27,  null: false
    t.string  "ebeln",  limit: 90,  null: false
    t.string  "ebelp",  limit: 45,  null: false
    t.string  "belnr",  limit: 90,  null: false
    t.string  "buzei",  limit: 36,  null: false
    t.string  "budat",  limit: 72,  null: false
    t.decimal "netpr"
    t.decimal "menge"
    t.decimal "wrbtr"
    t.string  "waers",  limit: 45,  null: false
    t.decimal "cnetpr"
    t.string  "shkzg",  limit: 9,   null: false
    t.string  "matnr",  limit: 162, null: false
    t.string  "matkl",  limit: 81,  null: false
    t.string  "maktx",  limit: 360
    t.string  "meins",  limit: 27,  null: false
    t.string  "wgbez",  limit: 180
    t.string  "hrktx",  limit: 360
    t.string  "werks",  limit: 36,  null: false
    t.string  "lifnr",  limit: 90,  null: false
    t.string  "bsart",  limit: 36,  null: false
    t.decimal "mrate"
    t.string  "vtweg",  limit: 2
    t.string  "ctype",  limit: 3
    t.string  "name1",  limit: 315, null: false
    t.string  "sortl",  limit: 90,  null: false
    t.decimal "usprc"
    t.decimal "rank"
  end

  add_index "zekbe2016", ["vtweg", "ctype", "matnr"], name: "zekbe2016_idx1"

  create_table "zekbe_lum", id: false, force: :cascade do |t|
    t.string  "bwart",  limit: 27,  null: false
    t.string  "ebeln",  limit: 90,  null: false
    t.string  "ebelp",  limit: 45,  null: false
    t.string  "belnr",  limit: 90,  null: false
    t.string  "buzei",  limit: 36,  null: false
    t.string  "budat",  limit: 72,  null: false
    t.decimal "netpr"
    t.decimal "menge"
    t.decimal "wrbtr"
    t.string  "waers",  limit: 45,  null: false
    t.decimal "cnetpr"
    t.string  "shkzg",  limit: 9,   null: false
    t.string  "matnr",  limit: 162, null: false
    t.string  "matkl",  limit: 81,  null: false
    t.string  "maktx",  limit: 360
    t.string  "meins",  limit: 27,  null: false
    t.string  "wgbez",  limit: 180
    t.string  "hrktx",  limit: 360
    t.string  "werks",  limit: 36,  null: false
    t.string  "lifnr",  limit: 90,  null: false
    t.string  "bsart",  limit: 36,  null: false
    t.decimal "mrate"
    t.string  "vtweg",  limit: 2
    t.string  "ctype",  limit: 3
    t.string  "name1",  limit: 315, null: false
    t.string  "sortl",  limit: 90,  null: false
    t.decimal "usprc"
  end

  add_index "zekbe_lum", ["vtweg", "ctype", "matnr", "budat"], name: "zekbe_lum_a"

  create_table "zekbea", id: false, force: :cascade do |t|
    t.string  "bwart",  limit: 27,  null: false
    t.string  "ebeln",  limit: 90,  null: false
    t.string  "ebelp",  limit: 45,  null: false
    t.string  "belnr",  limit: 90,  null: false
    t.string  "buzei",  limit: 36,  null: false
    t.string  "budat",  limit: 72,  null: false
    t.decimal "netpr"
    t.decimal "menge"
    t.decimal "wrbtr"
    t.string  "waers",  limit: 45,  null: false
    t.decimal "cnetpr"
    t.string  "shkzg",  limit: 9,   null: false
    t.string  "matnr",  limit: 162, null: false
    t.string  "matkl",  limit: 81,  null: false
    t.string  "maktx",  limit: 360
    t.string  "meins",  limit: 27,  null: false
    t.string  "wgbez",  limit: 180
    t.string  "hrktx",  limit: 360
    t.string  "werks",  limit: 36,  null: false
    t.string  "lifnr",  limit: 90,  null: false
    t.string  "bsart",  limit: 36,  null: false
    t.decimal "mrate"
    t.string  "vtweg",  limit: 2
    t.string  "ctype",  limit: 3
    t.string  "name1",  limit: 315, null: false
    t.string  "sortl",  limit: 90,  null: false
    t.decimal "usprc"
  end

  create_table "zidle", id: false, force: :cascade do |t|
    t.string "werks", limit: nil
    t.string "matnr", limit: nil
    t.string "vtweg", limit: nil
    t.string "bukrs", limit: nil
    t.string "ekgrp", limit: nil
  end

  create_table "zieba003", id: false, force: :cascade do |t|
    t.string  "matnr",  limit: 162,                          null: false
    t.string  "cbtyp",  limit: 9,                            null: false
    t.string  "cbseq",  limit: 36,                           null: false
    t.decimal "dlrat",              precision: 10, scale: 6, null: false
    t.string  "hscode", limit: 90,                           null: false
    t.string  "hstxt",  limit: 360,                          null: false
    t.string  "deuom",  limit: 27,                           null: false
    t.string  "cutxt",  limit: 180,                          null: false
    t.string  "matkl",  limit: 81,                           null: false
    t.string  "mtart",  limit: 36,                           null: false
    t.string  "meins",  limit: 27,                           null: false
    t.decimal "netkg"
    t.string  "maktx",  limit: 360,                          null: false
  end

  create_table "ziebex01", id: false, force: :cascade do |t|
    t.string  "decdt", limit: 72,                           null: false
    t.string  "dlfnr", limit: 225,                          null: false
    t.string  "expnr", limit: 108,                          null: false
    t.string  "expim", limit: 36,                           null: false
    t.string  "kunnr", limit: 90,                           null: false
    t.string  "waers", limit: 45,                           null: false
    t.string  "vbeln", limit: 90,                           null: false
    t.string  "posnr", limit: 54,                           null: false
    t.string  "matnr", limit: 162,                          null: false
    t.string  "vernr", limit: 72,                           null: false
    t.decimal "menge",             precision: 13, scale: 3, null: false
    t.string  "aufnr", limit: 108,                          null: false
    t.string  "charg", limit: 90
  end

  create_table "ziebexpfg", id: false, force: :cascade do |t|
    t.string  "pmatnr", limit: nil
    t.decimal "menge",              precision: 15, scale: 6
    t.string  "dlseq",  limit: nil
    t.string  "smode",  limit: nil
  end

  create_table "ziebexpfgbom", id: false, force: :cascade do |t|
    t.string  "pmatnr", limit: nil
    t.decimal "menge",               precision: 15, scale: 6
    t.string  "cmatnr", limit: 162
    t.string  "cmaktx", limit: 540
    t.string  "cmatkl", limit: 4000
    t.string  "cwerks", limit: 10
    t.string  "meins",  limit: 10
    t.decimal "bomqty"
    t.decimal "matqty"
  end

  create_table "ziebexport", id: false, force: :cascade do |t|
    t.string  "decdt", limit: 72,                           null: false
    t.string  "dlfnr", limit: 225,                          null: false
    t.string  "expnr", limit: 108,                          null: false
    t.string  "expim", limit: 36,                           null: false
    t.string  "kunnr", limit: 90,                           null: false
    t.string  "waers", limit: 45,                           null: false
    t.string  "vbeln", limit: 90,                           null: false
    t.string  "posnr", limit: 54,                           null: false
    t.string  "matnr", limit: 162,                          null: false
    t.string  "dlseq", limit: 36,                           null: false
    t.decimal "menge",             precision: 13, scale: 3, null: false
    t.string  "vernr", limit: 72,                           null: false
    t.string  "charg", limit: 90
    t.string  "aufnr", limit: 108,                          null: false
  end

  create_table "ziebfgbom", id: false, force: :cascade do |t|
    t.string  "matnr",  limit: 162, null: false
    t.string  "maktx",  limit: 360, null: false
    t.string  "aufnr",  limit: 108
    t.decimal "stkqty"
    t.string  "cmatnr", limit: 162, null: false
    t.string  "cmaktx", limit: 360
    t.string  "cmatkl", limit: 81
    t.string  "cwerks", limit: 36,  null: false
    t.string  "meins",  limit: 27,  null: false
    t.decimal "bomqty"
    t.decimal "matqty"
  end

  create_table "ziebi001", id: false, force: :cascade do |t|
    t.string  "mandt",  limit: 27,                             null: false
    t.string  "impnr",  limit: 108,                            null: false
    t.string  "imtyp",  limit: 18,                             null: false
    t.string  "imstu",  limit: 9,                              null: false
    t.string  "ctlty",  limit: 9,                              null: false
    t.string  "bnarea", limit: 36,                             null: false
    t.string  "bukrs",  limit: 36,                             null: false
    t.string  "connr",  limit: 180,                            null: false
    t.string  "cvseq",  limit: 27,                             null: false
    t.string  "autnr",  limit: 180,                            null: false
    t.string  "lifnr",  limit: 90,                             null: false
    t.string  "kunnr",  limit: 90,                             null: false
    t.string  "brokr",  limit: 90,                             null: false
    t.string  "fowdr",  limit: 90,                             null: false
    t.string  "loekz",  limit: 9,                              null: false
    t.string  "hawb",   limit: 180,                            null: false
    t.string  "mawb",   limit: 225,                            null: false
    t.string  "dlfnr",  limit: 225,                            null: false
    t.string  "vdlfnr", limit: 225,                            null: false
    t.string  "cannr",  limit: 180,                            null: false
    t.string  "closn",  limit: 135,                            null: false
    t.string  "dpseq",  limit: 90,                             null: false
    t.string  "licpl",  limit: 90,                             null: false
    t.string  "trnam",  limit: 126,                            null: false
    t.string  "cutyp",  limit: 9,                              null: false
    t.string  "import", limit: 36,                             null: false
    t.string  "oeport", limit: 36,                             null: false
    t.string  "hdport", limit: 36,                             null: false
    t.string  "dltyp",  limit: 36,                             null: false
    t.string  "dutyp",  limit: 27,                             null: false
    t.integer "dutpe",  limit: 3,    precision: 3,             null: false
    t.string  "cttyp",  limit: 9,                              null: false
    t.string  "pupos",  limit: 18,                             null: false
    t.string  "depat",  limit: 27,                             null: false
    t.string  "ndest",  limit: 45,                             null: false
    t.string  "portsh", limit: 36,                             null: false
    t.string  "imdat",  limit: 72,                             null: false
    t.string  "decdt",  limit: 72,                             null: false
    t.string  "tonnr",  limit: 27,                             null: false
    t.integer "itamt",  limit: 6,    precision: 6,             null: false
    t.string  "pktyp",  limit: 27,                             null: false
    t.string  "cotnr",  limit: 99,                             null: false
    t.string  "cotn2",  limit: 99,                             null: false
    t.string  "cntyp",  limit: 36,                             null: false
    t.string  "cctnr",  limit: 180,                            null: false
    t.string  "chanr",  limit: 36,                             null: false
    t.string  "attac",  limit: 540,                            null: false
    t.string  "atta2",  limit: 540,                            null: false
    t.string  "satyp",  limit: 9,                              null: false
    t.decimal "brgew",               precision: 21, scale: 10, null: false
    t.decimal "ntgew",               precision: 21, scale: 10, null: false
    t.string  "gewei",  limit: 27,                             null: false
    t.decimal "freig",               precision: 11, scale: 2,  null: false
    t.decimal "insur",               precision: 11, scale: 2,  null: false
    t.decimal "misce",               precision: 11, scale: 2,  null: false
    t.string  "waers",  limit: 45,                             null: false
    t.string  "cance",  limit: 9,                              null: false
    t.string  "forcan", limit: 9,                              null: false
    t.string  "focnr",  limit: 180,                            null: false
    t.string  "dutdr",  limit: 9,                              null: false
    t.string  "paymt",  limit: 9,                              null: false
    t.string  "paydt",  limit: 72,                             null: false
    t.string  "paid",   limit: 9,                              null: false
    t.decimal "pdamt",               precision: 11, scale: 2,  null: false
    t.string  "urgent", limit: 9,                              null: false
    t.string  "depot",  limit: 9,                              null: false
    t.string  "pic",    limit: 90,                             null: false
    t.string  "remark", limit: 540,                            null: false
    t.string  "remak2", limit: 540,                            null: false
    t.string  "remak3", limit: 540,                            null: false
    t.string  "dwdat",  limit: 72,                             null: false
    t.string  "dwtim",  limit: 54,                             null: false
    t.string  "uldat",  limit: 72,                             null: false
    t.string  "ultim",  limit: 54,                             null: false
    t.string  "cavdat", limit: 72,                             null: false
    t.string  "bignr",  limit: 162,                            null: false
    t.string  "guinr",  limit: 162,                            null: false
    t.string  "ncanre", limit: 1080,                           null: false
    t.string  "crdat",  limit: 72,                             null: false
    t.string  "crtime", limit: 54,                             null: false
    t.string  "crnam",  limit: 108,                            null: false
    t.string  "aedat",  limit: 72,                             null: false
    t.string  "aetime", limit: 54,                             null: false
    t.string  "aenam",  limit: 108,                            null: false
  end

  add_index "ziebi001", ["impnr"], name: "ziebi001_a"

  create_table "ziebi002", id: false, force: :cascade do |t|
    t.string  "mandt",    limit: 27,                            null: false
    t.string  "impnr",    limit: 108,                           null: false
    t.string  "impim",    limit: 36,                            null: false
    t.string  "imptm",    limit: 36,                            null: false
    t.string  "invnr",    limit: 189,                           null: false
    t.string  "ebeln",    limit: 90,                            null: false
    t.string  "ebelp",    limit: 45,                            null: false
    t.string  "vbeln_dn", limit: 90,                            null: false
    t.string  "posnr_dn", limit: 54,                            null: false
    t.string  "mblnr",    limit: 90,                            null: false
    t.string  "mjahr",    limit: 36,                            null: false
    t.string  "zeile",    limit: 36,                            null: false
    t.string  "matnr",    limit: 162,                           null: false
    t.decimal "menge",                precision: 13, scale: 3,  null: false
    t.string  "meins",    limit: 27,                            null: false
    t.decimal "netpr",                precision: 13, scale: 4,  null: false
    t.integer "peinh",    limit: 5,   precision: 5,             null: false
    t.string  "waers",    limit: 45,                            null: false
    t.string  "cbtyp",    limit: 9,                             null: false
    t.string  "cbseq",    limit: 36,                            null: false
    t.string  "coseq",    limit: 27,                            null: false
    t.string  "dlseq",    limit: 36,                            null: false
    t.string  "vernr",    limit: 72,                            null: false
    t.string  "closn",    limit: 135,                           null: false
    t.string  "cloim",    limit: 18,                            null: false
    t.string  "impcm",    limit: 18,                            null: false
    t.decimal "ntgew",                precision: 21, scale: 10, null: false
    t.decimal "brgew",                precision: 21, scale: 10, null: false
    t.string  "gewei",    limit: 27,                            null: false
    t.string  "pktyp",    limit: 27,                            null: false
    t.integer "itamt",    limit: 6,   precision: 6,             null: false
    t.string  "corig",    limit: 27,                            null: false
    t.string  "duway",    limit: 9,                             null: false
    t.string  "txt01",    limit: 360,                           null: false
    t.decimal "apmng",                precision: 26, scale: 10, null: false
    t.decimal "fsmng",                precision: 26, scale: 10, null: false
    t.decimal "scmng",                precision: 26, scale: 10, null: false
    t.decimal "wrbtr",                precision: 16, scale: 2
  end

  add_index "ziebi002", ["ebeln", "ebelp", "invnr"], name: "ziebi002_b"
  add_index "ziebi002", ["mblnr", "mjahr", "zeile"], name: "ziebi002_a"

  create_table "ziebmara", id: false, force: :cascade do |t|
    t.string  "cbtyp",  limit: 9,                            null: false
    t.string  "matkl",  limit: 81,                           null: false
    t.string  "matnr",  limit: 162,                          null: false
    t.string  "maktx",  limit: 360,                          null: false
    t.string  "dlseq",  limit: 36,                           null: false
    t.string  "hscode", limit: 90,                           null: false
    t.string  "hstxt",  limit: 360,                          null: false
    t.string  "smode",  limit: 540,                          null: false
    t.string  "deuom",  limit: 27,                           null: false
    t.string  "detxt",  limit: 180,                          null: false
    t.string  "fsuom",  limit: 27,                           null: false
    t.string  "fstxt",  limit: 180,                          null: false
    t.decimal "dlrat",              precision: 10, scale: 6, null: false
    t.decimal "fsrat",              precision: 10, scale: 6, null: false
    t.string  "meins",  limit: 27,                           null: false
    t.decimal "brgew",              precision: 13, scale: 3, null: false
    t.decimal "ntgew",              precision: 13, scale: 3, null: false
    t.string  "gewei",  limit: 27,                           null: false
  end

  create_table "ziebwip", id: false, force: :cascade do |t|
    t.string  "auart",  limit: 36,                           null: false
    t.string  "aufnr",  limit: 108,                          null: false
    t.string  "pwerks", limit: 36,                           null: false
    t.decimal "ordqty",             precision: 13, scale: 3, null: false
    t.decimal "rcvqty",             precision: 13, scale: 3, null: false
    t.string  "pmatnr", limit: 162,                          null: false
    t.string  "cmatnr", limit: 162,                          null: false
    t.string  "cwerks", limit: 36,                           null: false
    t.string  "meins",  limit: 27,                           null: false
    t.decimal "stdqty",             precision: 13, scale: 3, null: false
    t.decimal "issqty",             precision: 13, scale: 3, null: false
    t.decimal "useqty"
    t.decimal "wipqty"
  end

  create_table "ziebwzc", id: false, force: :cascade do |t|
    t.string  "vbeln"
    t.string  "posnr"
    t.string  "kunnr"
    t.string  "matnr"
    t.string  "charg"
    t.string  "aufnr"
    t.decimal "menge", precision: 15, scale: 3
  end

  create_table "ziebwzcbom", id: false, force: :cascade do |t|
    t.string  "vbeln"
    t.string  "posnr"
    t.string  "kunnr"
    t.string  "matnr"
    t.string  "charg"
    t.string  "aufnr"
    t.decimal "menge",              precision: 15, scale: 3
    t.string  "cmatnr", limit: 162,                          null: false
    t.string  "cmaktx", limit: 360,                          null: false
    t.string  "cmatkl", limit: 81
    t.string  "cwerks", limit: 36,                           null: false
    t.string  "meins",  limit: 27,                           null: false
    t.decimal "bomqty"
    t.decimal "matqty"
  end

  create_table "zmarc", id: false, force: :cascade do |t|
    t.string "matnr",  limit: nil
    t.string "werks",  limit: nil
    t.string "common", limit: nil
  end

  create_table "zmb5t", id: false, force: :cascade do |t|
    t.string  "rptdt",    limit: 8
    t.string  "ebeln",    limit: 90,                           null: false
    t.string  "ebelp",    limit: 45,                           null: false
    t.string  "etenr",    limit: 36,                           null: false
    t.string  "lifnr",    limit: 90,                           null: false
    t.string  "reswk",    limit: 36,                           null: false
    t.string  "werks",    limit: 36,                           null: false
    t.string  "lgort",    limit: 36,                           null: false
    t.string  "budat",    limit: 72,                           null: false
    t.string  "matnr",    limit: 162,                          null: false
    t.string  "txz01",    limit: 360,                          null: false
    t.string  "matkl",    limit: 81,                           null: false
    t.string  "mtart",    limit: 36,                           null: false
    t.string  "charg",    limit: 90,                           null: false
    t.decimal "menge",                precision: 13, scale: 3, null: false
    t.string  "meins",    limit: 27,                           null: false
    t.string  "hswae",    limit: 45,                           null: false
    t.decimal "dmbtr",                precision: 13, scale: 2, null: false
    t.string  "waers",    limit: 45,                           null: false
    t.decimal "wrbtr",                precision: 13, scale: 2, null: false
    t.string  "infnr",    limit: 90,                           null: false
    t.string  "scucd",    limit: 45,                           null: false
    t.decimal "netpr"
    t.decimal "stoamt"
    t.decimal "wkurs",                precision: 9,  scale: 5, null: false
    t.decimal "localamt"
    t.string  "dn",       limit: 90
    t.string  "dnposnr",  limit: 54
  end

  create_table "zmcha", id: false, force: :cascade do |t|
    t.string "mandt", limit: 27,  null: false
    t.string "matnr", limit: 162, null: false
    t.string "charg", limit: 90,  null: false
    t.string "budat", limit: 72,  null: false
    t.string "mblnr", limit: 90,  null: false
    t.string "mjahr", limit: 36,  null: false
    t.string "zeile", limit: 36,  null: false
    t.string "aufnr", limit: 108, null: false
    t.string "ebeln", limit: 90,  null: false
    t.string "ebelp", limit: 45,  null: false
    t.string "werks", limit: 36,  null: false
    t.string "bwart", limit: 27,  null: false
    t.string "cpudt", limit: 72,  null: false
    t.string "cputm", limit: 54,  null: false
  end

  add_index "zmcha", ["matnr", "charg"], name: "zmcha1"

  create_table "zmigo_doc_lines", id: false, force: :cascade do |t|
    t.string "bukrs", limit: 36, null: false
    t.string "lifnr", limit: 90, null: false
    t.string "augbl", limit: 90, null: false
    t.string "belnr", limit: 90, null: false
  end

  create_table "zmigo_docs", id: false, force: :cascade do |t|
    t.string  "ebeln",  limit: 90,                           null: false
    t.string  "ebelp",  limit: 45,                           null: false
    t.string  "budat",  limit: 72,                           null: false
    t.string  "lifnr",  limit: 90,                           null: false
    t.string  "xblnr",  limit: 144,                          null: false
    t.string  "frbnr",  limit: 144,                          null: false
    t.string  "werks",  limit: 36,                           null: false
    t.string  "matnr",  limit: 162,                          null: false
    t.string  "charg",  limit: 90,                           null: false
    t.decimal "menge",              precision: 13, scale: 3, null: false
    t.string  "shkzg",  limit: 9,                            null: false
    t.string  "bwart",  limit: 27,                           null: false
    t.string  "mjahr",  limit: 36,                           null: false
    t.string  "mblnr",  limit: 90,                           null: false
    t.string  "buzei",  limit: 36,                           null: false
    t.string  "bukrs",  limit: 36,                           null: false
    t.string  "belnr",  limit: 90,                           null: false
    t.string  "gjahr",  limit: 36,                           null: false
    t.string  "ibelnr", limit: 90
    t.string  "igjahr", limit: 36
    t.string  "ibuzei", limit: 54
    t.string  "pbelnr", limit: 90
    t.string  "pgjahr", limit: 36
    t.string  "pbuzei", limit: 54
    t.string  "augbl",  limit: 200
  end

  create_table "zmm0001", id: false, force: :cascade do |t|
    t.string "mandt", limit: 27,  null: false
    t.string "mblnr", limit: 90,  null: false
    t.string "mjahr", limit: 36,  null: false
    t.string "zeile", limit: 36,  null: false
    t.string "ebeln", limit: 90,  null: false
    t.string "ebelp", limit: 45,  null: false
    t.string "bvicg", limit: 18,  null: false
    t.string "bvitp", limit: 9,   null: false
    t.string "copfg", limit: 9,   null: false
    t.string "dspus", limit: 180, null: false
    t.string "aspus", limit: 180, null: false
    t.string "revfg", limit: 9,   null: false
    t.string "lifnr", limit: 90,  null: false
    t.string "parvw", limit: 18,  null: false
    t.string "patno", limit: 90,  null: false
    t.string "patnm", limit: 315, null: false
    t.string "stpo1", limit: 90,  null: false
    t.string "stpi1", limit: 45,  null: false
    t.string "odno1", limit: 90,  null: false
    t.string "odni1", limit: 54,  null: false
    t.string "bino1", limit: 90,  null: false
    t.string "bini1", limit: 54,  null: false
    t.string "matn1", limit: 90,  null: false
    t.string "maty1", limit: 36,  null: false
    t.string "mati1", limit: 36,  null: false
    t.string "livn1", limit: 90,  null: false
    t.string "livy1", limit: 36,  null: false
    t.string "livi1", limit: 54,  null: false
    t.string "stpo2", limit: 90,  null: false
    t.string "stpi2", limit: 45,  null: false
    t.string "odno2", limit: 90,  null: false
    t.string "odni2", limit: 54,  null: false
    t.string "bino2", limit: 90,  null: false
    t.string "bini2", limit: 54,  null: false
    t.string "matn2", limit: 90,  null: false
    t.string "maty2", limit: 36,  null: false
    t.string "mati2", limit: 36,  null: false
    t.string "livn2", limit: 90,  null: false
    t.string "livy2", limit: 36,  null: false
    t.string "livi2", limit: 54,  null: false
    t.string "crdat", limit: 72,  null: false
    t.string "crnam", limit: 108, null: false
    t.string "crtim", limit: 54,  null: false
    t.string "crtem", limit: 324, null: false
    t.string "lcdat", limit: 72,  null: false
    t.string "lcnam", limit: 108, null: false
    t.string "lctim", limit: 54,  null: false
    t.string "lctem", limit: 324, null: false
  end

  add_index "zmm0001", ["matn2", "maty2", "mati2"], name: "zmm0001_c"
  add_index "zmm0001", ["mblnr", "mjahr", "zeile"], name: "zmm0001_a"
  add_index "zmm0001", ["stpo2", "stpi2"], name: "zmm0001_b"

  create_table "zmrfcst", id: false, force: :cascade do |t|
    t.string  "vtweg",  limit: 18,  null: false
    t.string  "period", limit: 44
    t.string  "prctr",  limit: 90,  null: false
    t.string  "ktext",  limit: 180
    t.decimal "fcamt"
  end

  create_table "zmrsale", id: false, force: :cascade do |t|
    t.string  "rptdt", limit: 8
    t.string  "vtweg", limit: 18,  null: false
    t.string  "ktext", limit: 180
    t.decimal "mtd"
    t.decimal "dayb4"
    t.decimal "today"
  end

  create_table "zopehr2012", id: false, force: :cascade do |t|
    t.string  "kadat",   limit: 72,  null: false
    t.string  "werks",   limit: 36,  null: false
    t.string  "matnr",   limit: 162, null: false
    t.decimal "opehr"
    t.decimal "opehrst"
  end

  create_table "zopehr2012_old", id: false, force: :cascade do |t|
    t.string  "kadat",   limit: 72,  null: false
    t.string  "werks",   limit: 36,  null: false
    t.string  "matnr",   limit: 162, null: false
    t.decimal "opehr"
    t.decimal "opehrst"
  end

  create_table "zopehr2013", id: false, force: :cascade do |t|
    t.string  "kadat", limit: 72,  null: false
    t.string  "werks", limit: 36,  null: false
    t.string  "matnr", limit: 162, null: false
    t.decimal "opehr"
    t.decimal "sthrs"
  end

  create_table "zopehr2013s", id: false, force: :cascade do |t|
    t.string  "kadat",   limit: 72,  null: false
    t.string  "werks",   limit: 36,  null: false
    t.string  "matnr",   limit: 162, null: false
    t.decimal "opehr"
    t.decimal "opehrst"
  end

  create_table "zopehr2014", id: false, force: :cascade do |t|
    t.string  "kadat", limit: 72,  null: false
    t.string  "werks", limit: 36,  null: false
    t.string  "matnr", limit: 162, null: false
    t.decimal "opehr"
    t.decimal "sthrs"
  end

  create_table "zrseg", id: false, force: :cascade do |t|
    t.string  "cmpky",    limit: 167
    t.string  "vtweg",    limit: 2
    t.string  "belnr",    limit: 90,                           null: false
    t.string  "gjahr",    limit: 36,                           null: false
    t.string  "buzei",    limit: 54,                           null: false
    t.string  "bsart",    limit: 36,                           null: false
    t.string  "lifnr",    limit: 90,                           null: false
    t.string  "name1",    limit: 315,                          null: false
    t.string  "sortl",    limit: 90,                           null: false
    t.string  "ebeln",    limit: 90,                           null: false
    t.string  "ebelp",    limit: 45,                           null: false
    t.string  "matnr",    limit: 162,                          null: false
    t.string  "maktx",    limit: 360,                          null: false
    t.string  "matkl",    limit: 81,                           null: false
    t.string  "mtart",    limit: 36,                           null: false
    t.string  "zeinr",    limit: 198,                          null: false
    t.string  "bwkey",    limit: 36,                           null: false
    t.string  "bukrs",    limit: 36,                           null: false
    t.string  "werks",    limit: 36,                           null: false
    t.string  "lgort",    limit: 36,                           null: false
    t.string  "shkzg",    limit: 9,                            null: false
    t.string  "lfbnr",    limit: 90,                           null: false
    t.string  "lfgja",    limit: 36,                           null: false
    t.string  "lfpos",    limit: 36,                           null: false
    t.string  "budat",    limit: 72,                           null: false
    t.string  "period",   limit: 24
    t.string  "meins",    limit: 27,                           null: false
    t.string  "waers",    limit: 45,                           null: false
    t.string  "ctype",    limit: 3
    t.decimal "ntgew",                precision: 13, scale: 3, null: false
    t.decimal "tweight"
    t.decimal "menge"
    t.decimal "wrbtr"
    t.decimal "netpr"
    t.decimal "mrate"
    t.decimal "rmbamt"
    t.decimal "rmbprice"
  end

  add_index "zrseg", ["vtweg", "ctype", "matnr", "\"BUDAT\""], name: "zrsega"

  create_table "zrseg2011", id: false, force: :cascade do |t|
    t.string  "cmpky",    limit: 167
    t.string  "vtweg",    limit: 2
    t.string  "belnr",    limit: 90,                           null: false
    t.string  "gjahr",    limit: 36,                           null: false
    t.string  "buzei",    limit: 54,                           null: false
    t.string  "bsart",    limit: 36,                           null: false
    t.string  "lifnr",    limit: 90,                           null: false
    t.string  "name1",    limit: 315,                          null: false
    t.string  "sortl",    limit: 90,                           null: false
    t.string  "ebeln",    limit: 90,                           null: false
    t.string  "ebelp",    limit: 45,                           null: false
    t.string  "matnr",    limit: 162,                          null: false
    t.string  "maktx",    limit: 360,                          null: false
    t.string  "matkl",    limit: 81,                           null: false
    t.string  "mtart",    limit: 36,                           null: false
    t.string  "zeinr",    limit: 198,                          null: false
    t.string  "bwkey",    limit: 36,                           null: false
    t.string  "bukrs",    limit: 36,                           null: false
    t.string  "werks",    limit: 36,                           null: false
    t.string  "lgort",    limit: 36,                           null: false
    t.string  "shkzg",    limit: 9,                            null: false
    t.string  "lfbnr",    limit: 90,                           null: false
    t.string  "lfgja",    limit: 36,                           null: false
    t.string  "lfpos",    limit: 36,                           null: false
    t.string  "budat",    limit: 72,                           null: false
    t.string  "period",   limit: 24
    t.string  "meins",    limit: 27,                           null: false
    t.string  "waers",    limit: 45,                           null: false
    t.string  "ctype",    limit: 3
    t.decimal "ntgew",                precision: 13, scale: 3, null: false
    t.decimal "tweight"
    t.decimal "menge"
    t.decimal "wrbtr"
    t.decimal "netpr"
    t.decimal "mrate"
    t.decimal "rmbamt"
    t.decimal "rmbprice"
  end

  create_table "ztmm0031", id: false, force: :cascade do |t|
    t.string  "mandt",    limit: 27,                            null: false
    t.string  "belnr",    limit: 90,                            null: false
    t.string  "gjahr",    limit: 36,                            null: false
    t.string  "mblnr",    limit: 90,                            null: false
    t.string  "mjahr",    limit: 36,                            null: false
    t.string  "zeile",    limit: 36,                            null: false
    t.string  "ebeln",    limit: 90,                            null: false
    t.string  "ebelp",    limit: 45,                            null: false
    t.string  "bldat",    limit: 72,                            null: false
    t.string  "budat",    limit: 72,                            null: false
    t.string  "status",   limit: 9,                             null: false
    t.decimal "erfmg",                 precision: 13, scale: 3, null: false
    t.string  "erfme",    limit: 27,                            null: false
    t.decimal "bstmg",                 precision: 13, scale: 3, null: false
    t.decimal "bstmg_re",              precision: 13, scale: 3, null: false
    t.decimal "bstmg_iv",              precision: 13, scale: 3, null: false
    t.string  "bstme",    limit: 27,                            null: false
    t.decimal "bpmng",                 precision: 13, scale: 3, null: false
    t.decimal "bpmng_re",              precision: 13, scale: 3, null: false
    t.decimal "bpmng_iv",              precision: 13, scale: 3, null: false
    t.string  "bprme",    limit: 27,                            null: false
    t.decimal "dmbtr",                 precision: 13, scale: 2, null: false
    t.string  "hswae",    limit: 45,                            null: false
    t.string  "shkzg",    limit: 9,                             null: false
    t.string  "mwskz",    limit: 18,                            null: false
    t.string  "frbnr",    limit: 144,                           null: false
    t.string  "matnr",    limit: 162,                           null: false
    t.string  "matkl",    limit: 81,                            null: false
    t.decimal "netpr",                 precision: 17, scale: 6, null: false
    t.decimal "amt_wot",               precision: 17, scale: 6, null: false
    t.decimal "amt_tax",               precision: 17, scale: 6, null: false
    t.string  "lgort",    limit: 36,                            null: false
    t.string  "charg",    limit: 90,                            null: false
    t.string  "bsart",    limit: 36,                            null: false
    t.string  "retpo",    limit: 9,                             null: false
    t.string  "konnr",    limit: 90,                            null: false
    t.string  "msgtx",    limit: 1980,                          null: false
    t.string  "werks",    limit: 36,                            null: false
    t.string  "ekorg",    limit: 36,                            null: false
    t.string  "waers",    limit: 45,                            null: false
    t.string  "lifnr",    limit: 90,                            null: false
    t.string  "meins",    limit: 27,                            null: false
  end

  add_synonym "mara", "sapsr3.mara@sapp.regress.rdbms.dev.us.oracle.com", force: true
  add_synonym "makt", "sapsr3.makt@sapp.regress.rdbms.dev.us.oracle.com", force: true
  add_synonym "knvh", "sapsr3.knvh@sapp.regress.rdbms.dev.us.oracle.com", force: true
  add_synonym "t023t", "sapsr3.t023t@sapp.regress.rdbms.dev.us.oracle.com", force: true
  add_synonym "tkkh2", "sapsr3.tkkh2@sapp.regress.rdbms.dev.us.oracle.com", force: true
  add_synonym "kna1", "sapsr3.kna1@sapp.regress.rdbms.dev.us.oracle.com", force: true
  add_synonym "vbak", "sapsr3.vbak@sapp.regress.rdbms.dev.us.oracle.com", force: true
  add_synonym "tvakt", "sapsr3.tvakt@sapp.regress.rdbms.dev.us.oracle.com", force: true
  add_synonym "tvaut", "sapsr3.tvaut@sapp.regress.rdbms.dev.us.oracle.com", force: true
  add_synonym "pa0002", "sapsr3.pa0002@sapp.regress.rdbms.dev.us.oracle.com", force: true
  add_synonym "knvp", "sapsr3.knvp@sapp.regress.rdbms.dev.us.oracle.com", force: true
  add_synonym "mvke", "sapsr3.mvke@sapp.regress.rdbms.dev.us.oracle.com", force: true
  add_synonym "tvm1t", "sapsr3.tvm1t@sapp.regress.rdbms.dev.us.oracle.com", force: true
  add_synonym "vbep", "sapsr3.vbep@sapp.regress.rdbms.dev.us.oracle.com", force: true
  add_synonym "vbbe", "sapsr3.vbbe@sapp.regress.rdbms.dev.us.oracle.com", force: true
  add_synonym "vbap", "sapsr3.vbap@sapp.regress.rdbms.dev.us.oracle.com", force: true
  add_synonym "tcurr", "sapsr3.tcurr@sapp.regress.rdbms.dev.us.oracle.com", force: true
  add_synonym "mbew", "sapsr3.mbew@sapp.regress.rdbms.dev.us.oracle.com", force: true
  add_synonym "marc", "sapsr3.marc@sapp.regress.rdbms.dev.us.oracle.com", force: true
  add_synonym "cepct", "sapsr3.cepct@sapp.regress.rdbms.dev.us.oracle.com", force: true
  add_synonym "mard", "sapsr3.mard@sapp.regress.rdbms.dev.us.oracle.com", force: true
  add_synonym "lna1", "sapsr3.kna1@sapp.regress.rdbms.dev.us.oracle.com", force: true
  add_synonym "coss", "sapsr3.coss@sapp.regress.rdbms.dev.us.oracle.com", force: true
  add_synonym "cosp", "sapsr3.cosp@sapp.regress.rdbms.dev.us.oracle.com", force: true

end
