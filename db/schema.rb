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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140405212246) do

  create_table "choice_answers", force: true do |t|
    t.integer  "choice_id"
    t.integer  "choice_question_id"
    t.text     "explanation"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "choice_answers", ["choice_id"], name: "index_choice_answers_on_choice_id"
  add_index "choice_answers", ["choice_question_id"], name: "index_choice_answers_on_choice_question_id"
  add_index "choice_answers", ["user_id"], name: "index_choice_answers_on_user_id"

  create_table "choice_questions", force: true do |t|
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "document_id"
  end

  add_index "choice_questions", ["document_id"], name: "index_choice_questions_on_document_id"

  create_table "choice_votes", force: true do |t|
    t.integer  "choice_answer_id"
    t.integer  "user_id"
    t.integer  "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "choice_votes", ["choice_answer_id"], name: "index_choice_votes_on_choice_answer_id"
  add_index "choice_votes", ["user_id"], name: "index_choice_votes_on_user_id"

  create_table "choices", force: true do |t|
    t.text     "text"
    t.integer  "choice_question_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "choices", ["choice_question_id"], name: "index_choices_on_choice_question_id"

  create_table "documents", force: true do |t|
    t.string   "name"
    t.integer  "group_id"
    t.integer  "owner_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "documents", ["group_id"], name: "index_documents_on_group_id"
  add_index "documents", ["owner_id"], name: "index_documents_on_owner_id"

  create_table "groups", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups_users", force: true do |t|
    t.integer  "user_id"
    t.integer  "group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "groups_users", ["group_id"], name: "index_groups_users_on_group_id"
  add_index "groups_users", ["user_id"], name: "index_groups_users_on_user_id"

  create_table "members", force: true do |t|
    t.integer  "user_id"
    t.integer  "group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "members", ["group_id"], name: "index_members_on_group_id"
  add_index "members", ["user_id"], name: "index_members_on_user_id"

  create_table "text_answers", force: true do |t|
    t.integer  "text_question_id"
    t.text     "explanation"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "text_answers", ["text_question_id"], name: "index_text_answers_on_text_question_id"
  add_index "text_answers", ["user_id"], name: "index_text_answers_on_user_id"

  create_table "text_questions", force: true do |t|
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "document_id"
  end

  add_index "text_questions", ["document_id"], name: "index_text_questions_on_document_id"

  create_table "text_votes", force: true do |t|
    t.integer  "text_answer_id"
    t.integer  "user_id"
    t.integer  "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "text_votes", ["text_answer_id"], name: "index_text_votes_on_text_answer_id"
  add_index "text_votes", ["user_id"], name: "index_text_votes_on_user_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
