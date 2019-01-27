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

ActiveRecord::Schema.define(version: 2019_01_26_062110) do

  create_table "comments", force: :cascade do |t|
    t.boolean "helpfulness"
    t.string "content"
    t.integer "trainer_id"
    t.integer "tutorial_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "trainer_email"
    t.index ["trainer_id"], name: "index_comments_on_trainer_id"
    t.index ["tutorial_id"], name: "index_comments_on_tutorial_id"
  end

  create_table "trainers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "provider"
    t.string "uid"
    t.index ["email"], name: "index_trainers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_trainers_on_reset_password_token", unique: true
  end

  create_table "tutorials", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "trainer_id"
    t.integer "comments_count"
    t.string "video_link"
  end

end
