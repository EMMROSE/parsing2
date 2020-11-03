# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_27_101410) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "fournisseurs", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "rib"
    t.string "email"
    t.string "code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "paiements", force: :cascade do |t|
    t.string "date"
    t.string "status", default: "à générer"
    t.integer "amount_cents", default: 0, null: false
    t.string "amount_currency", default: "EUR", null: false
    t.bigint "fournisseur_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["fournisseur_id"], name: "index_paiements_on_fournisseur_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "brand"
    t.string "name"
    t.string "size"
    t.string "genre"
    t.string "category"
    t.string "status", default: "à vendre"
    t.integer "price_cents", default: 0, null: false
    t.string "price_currency", default: "EUR", null: false
    t.bigint "selection_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["selection_id"], name: "index_products_on_selection_id"
  end

  create_table "selections", force: :cascade do |t|
    t.text "date"
    t.bigint "fournisseur_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["fournisseur_id"], name: "index_selections_on_fournisseur_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "paiements", "fournisseurs"
  add_foreign_key "products", "selections"
  add_foreign_key "selections", "fournisseurs"
end
