# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2023_10_11_233906) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "transaction_aggregates", primary_key: "aggregate_id", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "action"
    t.string "status"
    t.decimal "amount", precision: 19, scale: 4
    t.uuid "customer_id"
    t.string "customer_external_id"
    t.uuid "merchant_id"
    t.string "merchant_external_id"
    t.string "provider"
    t.uuid "client_payment_method"
    t.uuid "provider_setting"
    t.uuid "client_id"
    t.string "event_type"
    t.json "event_data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.uuid "transaction_id"
  end

  create_table "transaction_events", primary_key: "event_id", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "aggregate_id"
    t.string "action"
    t.string "status"
    t.decimal "amount", precision: 19, scale: 4
    t.uuid "customer_id"
    t.string "customer_external_id"
    t.uuid "merchant_id"
    t.string "merchant_external_id"
    t.string "provider"
    t.uuid "client_payment_method"
    t.uuid "provider_setting"
    t.uuid "client_id"
    t.string "event_type"
    t.json "event_data"
    t.datetime "event_timestamp", precision: nil, default: -> { "CURRENT_TIMESTAMP" }
    t.uuid "transaction_id"
  end

  create_table "transaction_projections", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "transaction_id"
    t.string "action"
    t.string "status"
    t.decimal "amount"
    t.uuid "customer_id"
    t.string "customer_external_id"
    t.uuid "merchant_id"
    t.string "merchant_external_id"
    t.string "provider"
    t.uuid "client_payment_method"
    t.uuid "provider_setting"
    t.uuid "client_id"
    t.string "event_type"
    t.json "event_data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
