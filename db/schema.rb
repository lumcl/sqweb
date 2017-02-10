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

ActiveRecord::Schema.define(version: 20170210033543) do

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

  create_table "jpdmat201101", id: false, force: :cascade do |t|
    t.string  "jpitno", limit: nil, null: false
    t.string  "jpmtno", limit: nil, null: false
    t.string  "mmitds", limit: nil, null: false
    t.string  "mmunms", limit: nil, null: false
    t.string  "mmitgr", limit: nil, null: false
    t.decimal "jpcnqt"
  end

  create_table "mittra0801", id: false, force: :cascade do |t|
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

  create_table "mittra201007", id: false, force: :cascade do |t|
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

  create_table "mwohed201007", id: false, force: :cascade do |t|
    t.integer "rrn400", limit: 11,  precision: 11,           null: false
    t.integer "vhcono", limit: 3,   precision: 3
    t.string  "vhfaci", limit: nil,                          null: false
    t.string  "vhprno", limit: nil,                          null: false
    t.integer "vhmfno", limit: 7,   precision: 7
    t.string  "vhvano", limit: nil,                          null: false
    t.string  "vhdivi", limit: nil,                          null: false
    t.boolean "vhprio", limit: nil
    t.string  "vhorty", limit: nil,                          null: false
    t.boolean "vhgetp", limit: nil
    t.string  "vhwhst", limit: nil,                          null: false
    t.integer "vhsldt", limit: 8,   precision: 8
    t.string  "vhwhhs", limit: nil,                          null: false
    t.integer "vhhsdt", limit: 8,   precision: 8
    t.string  "vhwmst", limit: nil,                          null: false
    t.string  "vhwhlo", limit: nil,                          null: false
    t.string  "vhwhsl", limit: nil,                          null: false
    t.string  "vhbano", limit: nil,                          null: false
    t.integer "vhwosq", limit: 9,   precision: 9
    t.string  "vhdwno", limit: nil,                          null: false
    t.integer "vhplpr", limit: 7,   precision: 7
    t.string  "vhresp", limit: nil,                          null: false
    t.string  "vhtxt1", limit: nil,                          null: false
    t.string  "vhtxt2", limit: nil,                          null: false
    t.integer "vhfstd", limit: 8,   precision: 8
    t.integer "vhffid", limit: 8,   precision: 8
    t.integer "vhnurp", limit: 3,   precision: 3
    t.integer "vhstdt", limit: 8,   precision: 8
    t.integer "vhfidt", limit: 8,   precision: 8
    t.integer "vhrsdt", limit: 8,   precision: 8
    t.integer "vhrefd", limit: 8,   precision: 8
    t.integer "vhrpdt", limit: 8,   precision: 8
    t.boolean "vhwodp", limit: nil
    t.decimal "vhoroq",             precision: 15, scale: 6
    t.decimal "vhoroa",             precision: 15, scale: 6
    t.decimal "vhorqt",             precision: 15, scale: 6
    t.decimal "vhorqa",             precision: 15, scale: 6
    t.integer "vhnuba", limit: 5,   precision: 5
    t.string  "vhmaun", limit: nil,                          null: false
    t.decimal "vhrvqt",             precision: 15, scale: 6
    t.decimal "vhrvqa",             precision: 15, scale: 6
    t.decimal "vhcaqa",             precision: 15, scale: 6
    t.decimal "vhmaqt",             precision: 15, scale: 6
    t.decimal "vhmaqa",             precision: 15, scale: 6
    t.boolean "vhrend", limit: nil
    t.decimal "vhcofa",             precision: 15, scale: 9
    t.boolean "vhdmcf", limit: nil
    t.integer "vhnuc1", limit: 2,   precision: 2
    t.integer "vhnuc2", limit: 2,   precision: 2
    t.integer "vhnuc3", limit: 2,   precision: 2
    t.integer "vhnuc4", limit: 2,   precision: 2
    t.integer "vhnuc5", limit: 2,   precision: 2
    t.integer "vhnuc6", limit: 2,   precision: 2
    t.integer "vhnuc7", limit: 2,   precision: 2
    t.boolean "vhbdcd", limit: nil
    t.decimal "vhbaqt",             precision: 15, scale: 6
    t.decimal "vhleal",             precision: 5,  scale: 2
    t.integer "vhltre", limit: 3,   precision: 3
    t.boolean "vhwlde", limit: nil
    t.boolean "vhsdtb", limit: nil
    t.boolean "vhscex", limit: nil
    t.string  "vhplgr", limit: nil,                          null: false
    t.decimal "vhprdy",             precision: 5,  scale: 2
    t.integer "vhlevl", limit: 2,   precision: 2
    t.string  "vhprhl", limit: nil,                          null: false
    t.integer "vhmfhl", limit: 7,   precision: 7
    t.string  "vhprlo", limit: nil,                          null: false
    t.integer "vhmflo", limit: 7,   precision: 7
    t.integer "vhmslo", limit: 4,   precision: 4
    t.integer "vhlvsq", limit: 3,   precision: 3
    t.decimal "vhaspc",             precision: 5,  scale: 2
    t.decimal "vhcotd",             precision: 17, scale: 6
    t.string  "vhrorn", limit: nil,                          null: false
    t.integer "vhrorl", limit: 6,   precision: 6
    t.boolean "vhrorc", limit: nil
    t.integer "vhtxid", limit: 13,  precision: 13
    t.string  "vhecve", limit: nil,                          null: false
    t.boolean "vhpcdo", limit: nil
    t.string  "vhaoid", limit: nil,                          null: false
    t.string  "vhstrt", limit: nil,                          null: false
    t.integer "vhcfin", limit: 7,   precision: 7
    t.integer "vhecvs", limit: 3,   precision: 3
    t.string  "vhproj", limit: nil,                          null: false
    t.string  "vhelno", limit: nil,                          null: false
    t.integer "vhmsti", limit: 4,   precision: 4
    t.integer "vhmfti", limit: 4,   precision: 4
    t.integer "vhscom", limit: 3,   precision: 3
    t.integer "vhdlix", limit: 3,   precision: 3
    t.boolean "vhrlfa", limit: nil
    t.boolean "vhalcm", limit: nil
    t.boolean "vhrltd", limit: nil
    t.string  "vhwcln", limit: nil,                          null: false
    t.integer "vhnuop", limit: 5,   precision: 5
    t.integer "vhnufo", limit: 5,   precision: 5
    t.string  "vhactp", limit: nil,                          null: false
    t.integer "vhnndt", limit: 8,   precision: 8
    t.integer "vhrgdt", limit: 8,   precision: 8
    t.integer "vhrgtm", limit: 6,   precision: 6
    t.integer "vhlmdt", limit: 8,   precision: 8
    t.integer "vhchno", limit: 3,   precision: 3
    t.string  "vhchid", limit: nil,                          null: false
    t.integer "jodate", limit: 8,   precision: 8
    t.integer "jotime", limit: 6,   precision: 6
  end

  create_table "mwomat201007", id: false, force: :cascade do |t|
    t.integer "rrn400", limit: 11,  precision: 11,           null: false
    t.integer "vmcono", limit: 3,   precision: 3
    t.string  "vmfaci", limit: nil,                          null: false
    t.string  "vmprno", limit: nil,                          null: false
    t.integer "vmmfno", limit: 7,   precision: 7
    t.integer "vmmseq", limit: 4,   precision: 4
    t.integer "vmopno", limit: 4,   precision: 4
    t.string  "vmdwpo", limit: nil,                          null: false
    t.boolean "vmprio", limit: nil
    t.string  "vmwmst", limit: nil,                          null: false
    t.boolean "vmstgs", limit: nil
    t.string  "vmmtno", limit: nil,                          null: false
    t.integer "vmwosq", limit: 9,   precision: 9
    t.string  "vmfmt1", limit: nil,                          null: false
    t.string  "vmfmt2", limit: nil,                          null: false
    t.decimal "vmcnqt",             precision: 15, scale: 6
    t.boolean "vmdccd", limit: nil
    t.boolean "vmfxcd", limit: nil
    t.boolean "vmbypr", limit: nil
    t.boolean "vmcmcd", limit: nil
    t.string  "vmpeun", limit: nil,                          null: false
    t.integer "vmlgth", limit: 7,   precision: 7
    t.integer "vmwdth", limit: 7,   precision: 7
    t.decimal "vmlwf1",             precision: 15, scale: 6
    t.decimal "vmlwf2",             precision: 15, scale: 6
    t.decimal "vmwapc",             precision: 5,  scale: 2
    t.decimal "vmaspc",             precision: 5,  scale: 2
    t.integer "vmrdat", limit: 8,   precision: 8
    t.integer "vmtihm", limit: 4,   precision: 4
    t.decimal "vmmdbf",             precision: 5,  scale: 2
    t.boolean "vmmarc", limit: nil
    t.decimal "vmreqt",             precision: 15, scale: 6
    t.decimal "vmreqa",             precision: 15, scale: 6
    t.decimal "vmrcqa",             precision: 15, scale: 6
    t.decimal "vmrvqt",             precision: 15, scale: 6
    t.decimal "vmrvqa",             precision: 15, scale: 6
    t.decimal "vmcaqa",             precision: 15, scale: 6
    t.decimal "vmrpqt",             precision: 15, scale: 6
    t.decimal "vmrpqa",             precision: 15, scale: 6
    t.string  "vmrpre", limit: nil,                          null: false
    t.boolean "vmrend", limit: nil
    t.integer "vmrpdt", limit: 8,   precision: 8
    t.decimal "vmalqt",             precision: 15, scale: 6
    t.decimal "vmalqa",             precision: 15, scale: 6
    t.decimal "vmplqt",             precision: 15, scale: 6
    t.decimal "vmplqa",             precision: 15, scale: 6
    t.decimal "vmcofa",             precision: 15, scale: 9
    t.boolean "vmdmcf", limit: nil
    t.boolean "vmwodp", limit: nil
    t.decimal "vmmprc",             precision: 17, scale: 6
    t.string  "vmwhlo", limit: nil,                          null: false
    t.string  "vmwhsl", limit: nil,                          null: false
    t.string  "vmbano", limit: nil,                          null: false
    t.integer "vmplpr", limit: 7,   precision: 7
    t.string  "vmplgr", limit: nil,                          null: false
    t.decimal "vmprdy",             precision: 5,  scale: 2
    t.decimal "vmaswq",             precision: 15, scale: 6
    t.boolean "vmalmt", limit: nil
    t.boolean "vmspmt", limit: nil
    t.integer "vmstsq", limit: 7,   precision: 7
    t.boolean "vmordp", limit: nil
    t.boolean "vmrorc", limit: nil
    t.string  "vmrorn", limit: nil,                          null: false
    t.integer "vmrorl", limit: 6,   precision: 6
    t.boolean "vmnoaa", limit: nil
    t.integer "vmacts", limit: 3,   precision: 3
    t.integer "vmrgdt", limit: 8,   precision: 8
    t.integer "vmrgtm", limit: 6,   precision: 6
    t.integer "vmlmdt", limit: 8,   precision: 8
    t.integer "vmchno", limit: 3,   precision: 3
    t.string  "vmchid", limit: nil,                          null: false
    t.integer "jodate", limit: 8,   precision: 8
    t.integer "jotime", limit: 6,   precision: 6
  end

  create_table "rcv382a", id: false, force: :cascade do |t|
    t.string  "rcvdoc", limit: 164
    t.string  "budat",  limit: 72,  null: false
    t.string  "bwart",  limit: 27,  null: false
    t.string  "matkl",  limit: 81,  null: false
    t.string  "matnr",  limit: 162, null: false
    t.string  "maktx",  limit: 360, null: false
    t.string  "werks",  limit: 36,  null: false
    t.string  "lgort",  limit: 36,  null: false
    t.string  "charg",  limit: 90,  null: false
    t.string  "lifnr",  limit: 90,  null: false
    t.string  "ebeln",  limit: 90,  null: false
    t.string  "ebelp",  limit: 45,  null: false
    t.decimal "menge"
    t.string  "meins",  limit: 27,  null: false
    t.string  "fabiao", limit: 144
  end

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

  create_table "wa001", id: false, force: :cascade do |t|
    t.string  "matnr",   limit: 162,                           null: false
    t.string  "vernr",   limit: 72,                            null: false
    t.string  "dlseq",   limit: 36,                            null: false
    t.string  "datuv",   limit: 72,                            null: false
    t.string  "cmatnr",  limit: 162,                           null: false
    t.decimal "cmenge",              precision: 26, scale: 10, null: false
    t.string  "meins",   limit: 27,                            null: false
    t.decimal "dmenge",              precision: 26, scale: 10, null: false
    t.string  "deuom",   limit: 27,                            null: false
    t.string  "cbtyp_r", limit: 9,                             null: false
    t.string  "cbseq_r", limit: 36,                            null: false
    t.string  "bond",    limit: 9,                             null: false
  end

  create_table "wcharg", id: false, force: :cascade do |t|
    t.string "matnr", limit: 162, null: false
    t.string "charg", limit: 90,  null: false
    t.string "aufnr", limit: 108, null: false
  end

  create_table "we001", id: false, force: :cascade do |t|
    t.string  "decdt",  limit: 72,                           null: false
    t.string  "dlfnr",  limit: 225,                          null: false
    t.string  "expdat", limit: 72,                           null: false
    t.string  "expnr",  limit: 108,                          null: false
    t.string  "expim",  limit: 36,                           null: false
    t.string  "vbeln",  limit: 90,                           null: false
    t.string  "posnr",  limit: 54,                           null: false
    t.string  "matnr",  limit: 162,                          null: false
    t.string  "vernr",  limit: 72,                           null: false
    t.decimal "menge",              precision: 13, scale: 3, null: false
    t.string  "meins",  limit: 27,                           null: false
    t.string  "charg",  limit: 108,                          null: false
    t.string  "aufnr",  limit: 108,                          null: false
    t.string  "uflag",  limit: 1
  end

  create_table "we001a001", id: false, force: :cascade do |t|
    t.string  "decdt",    limit: 72,                            null: false
    t.string  "dlfnr",    limit: 225,                           null: false
    t.string  "expnr",    limit: 108,                           null: false
    t.string  "expim",    limit: 36,                            null: false
    t.string  "vbeln",    limit: 90,                            null: false
    t.string  "posnr",    limit: 54,                            null: false
    t.string  "matnr",    limit: 162,                           null: false
    t.string  "vernr",    limit: 72,                            null: false
    t.decimal "pmenge",               precision: 13, scale: 3,  null: false
    t.string  "meins",    limit: 27,                            null: false
    t.string  "charg",    limit: 108,                           null: false
    t.string  "aufnr",    limit: 108,                           null: false
    t.string  "uflag",    limit: 1
    t.string  "dlseq",    limit: 36
    t.string  "datuv",    limit: 72
    t.string  "cmatnr",   limit: 162
    t.decimal "cmenge",               precision: 26, scale: 10
    t.string  "cmeins",   limit: 27
    t.decimal "dmenge",               precision: 26, scale: 10
    t.string  "deuom",    limit: 27
    t.string  "cbtyp_r",  limit: 9
    t.string  "cbseq_r",  limit: 36
    t.decimal "cmenge_t"
    t.decimal "dmenge_t"
    t.string  "bond",     limit: 9
  end

  create_table "wexpdn", id: false, force: :cascade do |t|
    t.string  "expnr",  limit: nil
    t.string  "vbeln",  limit: nil
    t.string  "matnr",  limit: nil
    t.decimal "dnqty",              precision: 15, scale: 6
    t.decimal "expqty",             precision: 15, scale: 6
  end

  create_table "wexplips", id: false, force: :cascade do |t|
    t.string  "expnr", limit: nil
    t.string  "dlfnr", limit: 225,                          null: false
    t.string  "decdt", limit: 72,                           null: false
    t.string  "vbeln", limit: nil
    t.string  "matnr", limit: nil
    t.string  "posnr", limit: 54,                           null: false
    t.string  "charg", limit: 90,                           null: false
    t.decimal "lfimg",             precision: 13, scale: 3, null: false
    t.string  "aufnr", limit: 108
  end

  create_table "wfg", id: false, force: :cascade do |t|
    t.string  "pmatnr", limit: nil
    t.decimal "menge",              precision: 15, scale: 6
  end

  create_table "wlips", id: false, force: :cascade do |t|
    t.string  "vbeln", limit: 90,                           null: false
    t.string  "posnr", limit: 54,                           null: false
    t.string  "wadat", limit: 72,                           null: false
    t.string  "matnr", limit: 162,                          null: false
    t.string  "charg", limit: 90,                           null: false
    t.string  "werks", limit: 36,                           null: false
    t.decimal "lfimg",             precision: 13, scale: 3, null: false
    t.string  "meins", limit: 27,                           null: false
    t.string  "uecha", limit: 54,                           null: false
    t.string  "aufnr", limit: 12
  end

  create_table "wmara", id: false, force: :cascade do |t|
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

  create_table "wmoopn", id: false, force: :cascade do |t|
    t.integer "vhmfno", limit: 7,   precision: 7
    t.string  "vhwhlo", limit: nil,                          null: false
    t.string  "vhprno", limit: nil,                          null: false
    t.decimal "vhorqt",             precision: 15, scale: 6
    t.decimal "mfgqty"
  end

  create_table "wopnmo201007", id: false, force: :cascade do |t|
    t.string  "mfno_c", limit: nil
    t.integer "mfno_n", limit: 7,   precision: 7
  end

  create_table "wresb", id: false, force: :cascade do |t|
    t.string  "expnr",  limit: nil
    t.string  "dlfnr",  limit: 225,                          null: false
    t.string  "decdt",  limit: 72,                           null: false
    t.string  "vbeln",  limit: nil
    t.string  "matnr",  limit: nil
    t.string  "posnr",  limit: 54,                           null: false
    t.string  "charg",  limit: 90,                           null: false
    t.decimal "lfimg",              precision: 13, scale: 3, null: false
    t.string  "aufnr",  limit: 108
    t.string  "cmatnr", limit: 162,                          null: false
    t.string  "cmaktx", limit: 360,                          null: false
    t.string  "cmatkl", limit: 81
    t.string  "cwerks", limit: 36,                           null: false
    t.string  "meins",  limit: 27,                           null: false
    t.decimal "bomqty"
    t.decimal "matqty"
  end

  create_table "wvl03", id: false, force: :cascade do |t|
    t.string "vbeln", limit: 90, null: false
    t.string "auart", limit: 36, null: false
  end

end
