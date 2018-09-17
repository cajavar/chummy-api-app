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

ActiveRecord::Schema.define(version: 2018_09_15_162444) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bots", force: :cascade do |t|
    t.string "token_face"
    t.datetime "start_date"
    t.datetime "end_date"
    t.bigint "token_id"
    t.bigint "teenager_id"
    t.index ["teenager_id"], name: "index_bots_on_teenager_id"
    t.index ["token_id"], name: "index_bots_on_token_id"
  end

  create_table "denounce_types", force: :cascade do |t|
    t.string "title"
  end

  create_table "denounces", force: :cascade do |t|
    t.text "facts"
    t.text "observations"
    t.bigint "denounce_type_id"
    t.bigint "bot_id"
    t.index ["bot_id"], name: "index_denounces_on_bot_id"
    t.index ["denounce_type_id"], name: "index_denounces_on_denounce_type_id"
  end

  create_table "psychologists", force: :cascade do |t|
    t.integer "identification"
    t.string "name"
    t.string "location"
    t.text "cv"
    t.string "address"
    t.integer "telephone"
    t.string "id_facebook"
    t.string "email"
  end

  create_table "teenager_histories", force: :cascade do |t|
    t.datetime "registry_date"
    t.string "token"
  end

  create_table "teenagers", force: :cascade do |t|
    t.integer "identification"
    t.string "name"
    t.string "location"
    t.integer "telephone"
    t.string "address"
    t.string "id_facebook"
    t.string "email"
    t.bigint "psychologist_id"
    t.bigint "teenager_history_id"
    t.index ["psychologist_id"], name: "index_teenagers_on_psychologist_id"
    t.index ["teenager_history_id"], name: "index_teenagers_on_teenager_history_id"
  end

  create_table "tokens", force: :cascade do |t|
    t.string "value"
  end

  add_foreign_key "bots", "teenagers"
  add_foreign_key "bots", "tokens"
  add_foreign_key "denounces", "bots"
  add_foreign_key "denounces", "denounce_types"
  add_foreign_key "teenagers", "psychologists"
  add_foreign_key "teenagers", "teenager_histories"
end
