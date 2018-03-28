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

ActiveRecord::Schema.define(version: 20180321212130) do

  create_table "boards", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "leankit_board_id", null: false
    t.string "board_title"
    t.string "board_desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cards", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "leankit_card_id", null: false
    t.string "card_title"
    t.integer "leankit_lane_id", null: false
    t.integer "parent_card_id"
    t.string "card_type"
    t.string "task_type"
    t.integer "card_size"
    t.datetime "planned_start_date"
    t.datetime "planned_end_date"
    t.datetime "actual_start_date"
    t.datetime "actual_end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dummy_models", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lanes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "leankit_lane_id", null: false
    t.string "lane_name"
    t.integer "parent_lane_id"
    t.integer "lane_card_count"
    t.integer "leankit_board_id", null: false
    t.integer "lane_columns"
    t.string "lane_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sprint_cards", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "leankit_sprint_id", null: false
    t.string "sprint_title"
    t.datetime "sprint_start_date"
    t.datetime "sprint_end_date"
    t.integer "leankit_board_id", null: false
    t.datetime "sprint_created_date"
    t.datetime "sprint_updated_date"
    t.integer "sprint_points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sprints", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "leankit_sprint_card_id"
    t.integer "leankit_sprint_id"
    t.integer "leankit_card_id"
    t.datetime "sprint_card_added_date"
    t.datetime "sprint_card_deleted_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
