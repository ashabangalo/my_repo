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

ActiveRecord::Schema.define(version: 20180311205100) do

  create_table "boards", force: :cascade do |t|
    t.integer "leankit_board_id", null: false
    t.string "boardtitle"
    t.string "boarddesc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cards", force: :cascade do |t|
    t.integer "leankit_card_id", null: false
    t.string "cardtitle"
    t.integer "leankit_lane_id", null: false
    t.integer "parentcard_id"
    t.string "cardtype"
    t.string "tasktype"
    t.integer "cardsize"
    t.datetime "plannedstartdate"
    t.datetime "planneddate"
    t.datetime "actualstartdate"
    t.datetime "actualenddate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lanes", force: :cascade do |t|
    t.integer "leankit_lane_id", null: false
    t.string "lanename"
    t.integer "parentlane_id"
    t.integer "cardcount"
    t.integer "leankit_board_id", null: false
    t.integer "lanecolumns"
    t.string "lanetype"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sprintcards", force: :cascade do |t|
    t.integer "leankit_sprintcard_id"
    t.integer "leankit_sprint_id"
    t.integer "leankit_card_id"
    t.datetime "addeddate"
    t.datetime "deleteddate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status"
    t.datetime "completedat"
  end

  create_table "sprints", force: :cascade do |t|
    t.integer "leankit_sprint_id", null: false
    t.string "sprinttitle"
    t.datetime "startdate"
    t.time "enddate"
    t.integer "leankit_board_id", null: false
    t.datetime "createddate"
    t.datetime "updateddate"
    t.integer "points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
