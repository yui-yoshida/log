#

ActiveRecord::Schema.define(version: 20180907051125) do

  
  enable_extension "plpgsql"

  create_table "blogs", force: :cascade do |t|
    t.text "content"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
