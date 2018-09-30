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

ActiveRecord::Schema.define(version: 2018_09_30_000124) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "general_partners", force: :cascade do |t|
    t.string "name"
    t.decimal "aum"
    t.string "alma_mater"
    t.decimal "net_worth"
    t.string "background"
    t.string "picture_url"
  end

  create_table "holdings", force: :cascade do |t|
    t.bigint "general_partner_id"
    t.string "holding_name"
    t.string "sector"
    t.string "controlling_interests", array: true
    t.decimal "total_holding_assets"
    t.index ["controlling_interests"], name: "index_holdings_on_controlling_interests", using: :gin
    t.index ["general_partner_id"], name: "index_holdings_on_general_partner_id"
  end

  create_table "stocks", force: :cascade do |t|
    t.bigint "holding_id"
    t.string "company_name"
    t.string "logo"
    t.string "ceo"
    t.string "description"
    t.string "sector"
    t.string "industry"
    t.string "website"
    t.decimal "market_cap"
    t.string "symbol"
    t.decimal "price"
    t.decimal "shares"
    t.decimal "buy_in_price"
    t.decimal "revenue"
    t.decimal "gross_profit"
    t.decimal "ebitda"
    t.decimal "ytd_change_percent"
    t.decimal "year_5_change_percent"
    t.index ["holding_id"], name: "index_stocks_on_holding_id"
  end

  add_foreign_key "holdings", "general_partners"
  add_foreign_key "stocks", "holdings"
end
