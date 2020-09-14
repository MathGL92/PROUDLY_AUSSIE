
ActiveRecord::Schema.define(version: 2020_09_14_071705) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "line_items", force: :cascade do |t|
    t.float "price"
    t.integer "amount"
    t.bigint "products_id", null: false
    t.bigint "shopping_carts_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["products_id"], name: "index_line_items_on_products_id"
    t.index ["shopping_carts_id"], name: "index_line_items_on_shopping_carts_id"
  end

  create_table "producers", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.text "introduction"
    t.string "ABN"
    t.string "company_name"
    t.boolean "approved"
    t.bigint "users_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["users_id"], name: "index_producers_on_users_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.bigint "producers_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["producers_id"], name: "index_products_on_producers_id"
  end

  create_table "shopping_carts", force: :cascade do |t|
    t.boolean "paid"
    t.bigint "users_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["users_id"], name: "index_shopping_carts_on_users_id"
  end

  create_table "taggings", force: :cascade do |t|
    t.bigint "products_id", null: false
    t.bigint "tags_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["products_id"], name: "index_taggings_on_products_id"
    t.index ["tags_id"], name: "index_taggings_on_tags_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "line_items", "products", column: "products_id"
  add_foreign_key "line_items", "shopping_carts", column: "shopping_carts_id"
  add_foreign_key "producers", "users", column: "users_id"
  add_foreign_key "products", "producers", column: "producers_id"
  add_foreign_key "shopping_carts", "users", column: "users_id"
  add_foreign_key "taggings", "products", column: "products_id"
  add_foreign_key "taggings", "tags", column: "tags_id"
end
