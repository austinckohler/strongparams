
ActiveRecord::Schema.define(version: 2020_05_12_191431) do

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.integer "population"
    t.string "state"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
