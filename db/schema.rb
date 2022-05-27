# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_05_18_020619) do
  create_table "accessories", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "accessories_orders", charset: "utf8mb4", force: :cascade do |t|
    t.integer "accessory_id"
    t.integer "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", charset: "utf8mb4", force: :cascade do |t|
    t.string "name_complete"
    t.string "email"
    t.string "phone"
    t.string "cel"
    t.string "adress"
    t.string "city"
    t.string "cpf_cnpj"
    t.string "cep"
    t.string "district"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "equipaments", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "marks", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", charset: "utf8mb4", force: :cascade do |t|
    t.integer "client_id"
    t.date "date"
    t.integer "mark_id"
    t.string "model"
    t.string "serial_number"
    t.integer "accessory_id"
    t.text "bug"
    t.text "solution"
    t.integer "stat_id"
    t.text "observation"
    t.decimal "price", precision: 10
    t.integer "equipament_id"
    t.integer "progre_id"
    t.text "control_internal"
    t.integer "sector_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "progres", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sectors", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stats", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
