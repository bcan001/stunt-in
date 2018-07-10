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

ActiveRecord::Schema.define(version: 2018_07_10_035712) do

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "published_at"
    t.string "author"
    t.index ["published_at"], name: "index_articles_on_published_at"
  end

  create_table "bids", force: :cascade do |t|
    t.integer "user_id"
    t.integer "item_id"
    t.decimal "price", precision: 8, scale: 2
    t.datetime "expires_at"
    t.index ["item_id"], name: "index_bids_on_item_id"
    t.index ["user_id"], name: "index_bids_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.index ["name"], name: "index_categories_on_name"
  end

  create_table "comments", force: :cascade do |t|
    t.integer "user_id"
    t.integer "article_id"
    t.integer "item_id"
    t.text "content"
    t.index ["article_id"], name: "index_comments_on_article_id"
    t.index ["item_id"], name: "index_comments_on_item_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "designers", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.index ["name"], name: "index_designers_on_name"
  end

  create_table "favorites", force: :cascade do |t|
    t.integer "user_id"
    t.string "like_type"
    t.integer "like_id"
    t.index ["like_type", "like_id"], name: "index_favorites_on_like_type_and_like_id"
    t.index ["user_id", "like_type"], name: "index_favorites_on_user_id_and_like_type"
  end

  create_table "images", force: :cascade do |t|
    t.string "parent_type"
    t.integer "parent_id"
    t.string "url"
    t.index ["parent_type", "parent_id"], name: "index_images_on_parent_type_and_parent_id"
  end

  create_table "items", force: :cascade do |t|
    t.integer "user_id"
    t.string "designer"
    t.string "name"
    t.text "description"
    t.decimal "price", precision: 8, scale: 2
    t.string "category"
    t.string "size"
    t.string "brand"
    t.datetime "posted_at"
    t.datetime "expires_at"
    t.index ["brand"], name: "index_items_on_brand"
    t.index ["category"], name: "index_items_on_category"
    t.index ["designer"], name: "index_items_on_designer"
    t.index ["size"], name: "index_items_on_size"
    t.index ["user_id"], name: "index_items_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.integer "from_user_id"
    t.integer "to_user_id"
    t.string "title"
    t.text "description"
    t.string "send_type"
    t.integer "send_id"
    t.index ["from_user_id"], name: "index_messages_on_from_user_id"
    t.index ["send_type", "send_id"], name: "index_messages_on_send_type_and_send_id"
    t.index ["to_user_id"], name: "index_messages_on_to_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

end
