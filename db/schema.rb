# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110925212947) do

  create_table "genders", :force => true do |t|
    t.string   "name"
    t.string   "abbreviation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "genders", ["name", "abbreviation"], :name => "index_genders_on_name_and_abbreviation", :unique => true

  create_table "genres", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ratings", :force => true do |t|
    t.string   "code",       :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ratings", ["code"], :name => "index_ratings_on_code", :unique => true

  create_table "universes", :force => true do |t|
    t.string   "name",         :null => false
    t.string   "abbreviation", :null => false
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "universes", ["name", "abbreviation"], :name => "index_universes_on_name_and_abbreviation", :unique => true

  create_table "warnings", :force => true do |t|
    t.string   "name",        :null => false
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
