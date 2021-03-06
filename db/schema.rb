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

ActiveRecord::Schema.define(version: 20170109165643) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "movies", force: :cascade do |t|
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "title"
    t.text     "description"
    t.string   "director"
    t.string   "movie_img_file_name"
    t.string   "movie_img_content_type"
    t.integer  "movie_img_file_size"
    t.datetime "movie_img_updated_at"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "rating"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "movie_id"
    t.index ["movie_id"], name: "index_reviews_on_movie_id", using: :btree
  end

  add_foreign_key "reviews", "movies"
end
