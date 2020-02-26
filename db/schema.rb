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

ActiveRecord::Schema.define(version: 2020_02_17_210514) do

  create_table "bikes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.integer "price", null: false
    t.integer "year", null: false
    t.integer "displacement", null: false
    t.integer "mileage", null: false
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "manufacture_id"
    t.bigint "prefecture_id"
    t.bigint "bodytype_id"
    t.index ["bodytype_id"], name: "index_bikes_on_bodytype_id"
    t.index ["manufacture_id"], name: "index_bikes_on_manufacture_id"
    t.index ["prefecture_id"], name: "index_bikes_on_prefecture_id"
    t.index ["user_id"], name: "index_bikes_on_user_id"
  end

  create_table "bodytypes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favorites", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "bike_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bike_id"], name: "index_favorites_on_bike_id"
    t.index ["user_id", "bike_id"], name: "index_favorites_on_user_id_and_bike_id", unique: true
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "images", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "image"
    t.bigint "bike_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bike_id"], name: "index_images_on_bike_id"
  end

  create_table "manufactures", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prefectures", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.date "start_date", null: false
    t.date "end_date", null: false
    t.integer "price", null: false
    t.bigint "owner_id"
    t.bigint "borrower_id"
    t.bigint "bike_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bike_id"], name: "index_reservations_on_bike_id"
    t.index ["borrower_id"], name: "index_reservations_on_borrower_id"
    t.index ["owner_id"], name: "index_reservations_on_owner_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "nickname", null: false
    t.string "last_name", null: false
    t.string "first_name", null: false
    t.string "last_name_kana", null: false
    t.string "first_name_kana", null: false
    t.date "birthday", null: false
    t.string "address", null: false
    t.string "phone_number", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bikes", "bodytypes"
  add_foreign_key "bikes", "manufactures"
  add_foreign_key "bikes", "prefectures"
  add_foreign_key "bikes", "users"
  add_foreign_key "favorites", "bikes"
  add_foreign_key "favorites", "users"
  add_foreign_key "images", "bikes"
  add_foreign_key "reservations", "bikes"
  add_foreign_key "reservations", "users", column: "borrower_id"
  add_foreign_key "reservations", "users", column: "owner_id"
end
