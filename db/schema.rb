

ActiveRecord::Schema.define(version: 20151204112723) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "performances", force: :cascade do |t|
    t.integer  "venue_id"
    t.integer  "show_id"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "show_reviews", force: :cascade do |t|
    t.string   "title"
    t.integer  "show_id"
    t.string   "author"
    t.text     "description"
    t.integer  "rating"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "shows", force: :cascade do |t|
    t.string   "name"
    t.datetime "date"
    t.string   "genre"
    t.string   "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "venue_reviews", force: :cascade do |t|
    t.string   "title"
    t.integer  "venue_id"
    t.string   "author"
    t.text     "description"
    t.integer  "rating"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "venues", force: :cascade do |t|
    t.string   "name"
    t.text     "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
