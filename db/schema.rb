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

ActiveRecord::Schema[7.0].define(version: 2022_10_18_205459) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "action_text_rich_texts", force: :cascade do |t|
    t.string "name", null: false
    t.text "body"
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["record_type", "record_id", "name"], name: "index_action_text_rich_texts_uniqueness", unique: true
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "anexo_plan_contratacions", force: :cascade do |t|
    t.integer "periodo"
    t.string "elaborado_por"
    t.integer "telefono"
    t.string "duracion_programa"
    t.string "observaciones"
    t.bigint "previous_study_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["previous_study_id"], name: "index_anexo_plan_contratacions_on_previous_study_id"
  end

  create_table "contracting_authorizations", force: :cascade do |t|
    t.text "cdp"
    t.text "rubro"
    t.text "radicado_nis"
    t.string "proyecto"
    t.string "reviso"
    t.string "vob"
    t.string "nombre_director_general"
    t.bigint "previous_study_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["previous_study_id"], name: "index_contracting_authorizations_on_previous_study_id"
  end

  create_table "contractors", force: :cascade do |t|
    t.string "no_año"
    t.string "nombre_contratista"
    t.integer "cedula_contratista"
    t.text "objeto_contrato"
    t.string "plazo"
    t.text "valor_forma_pago"
    t.string "modalidad_seleccion"
    t.bigint "previous_study_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["previous_study_id"], name: "index_contractors_on_previous_study_id"
  end

  create_table "equal_objects", force: :cascade do |t|
    t.string "proyecto"
    t.string "reviso"
    t.string "vob"
    t.string "nombre_director_general"
    t.bigint "previous_study_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["previous_study_id"], name: "index_equal_objects_on_previous_study_id"
  end

  create_table "memorandum_contractings", force: :cascade do |t|
    t.string "tipo_formacion"
    t.string "cdp"
    t.string "proyecto"
    t.string "reviso"
    t.string "vob"
    t.bigint "previous_study_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["previous_study_id"], name: "index_memorandum_contractings_on_previous_study_id"
  end

  create_table "personal_inexistences", force: :cascade do |t|
    t.string "proyecto"
    t.string "reviso"
    t.string "vob"
    t.string "nombre_director_general"
    t.bigint "previous_study_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["previous_study_id"], name: "index_personal_inexistences_on_previous_study_id"
  end

  create_table "previous_studies", force: :cascade do |t|
    t.text "objeto"
    t.text "educacion"
    t.string "experiencia"
    t.text "valor_forma_pago"
    t.string "plazo"
    t.string "lugar"
    t.string "supervisor"
    t.string "ordenador"
    t.text "justificacion_necesidad_contratacion"
    t.text "obligaciones"
    t.text "programa"
    t.string "nivel"
    t.text "perfil"
    t.text "experiencia_t"
    t.integer "numero_contratos"
    t.float "valor_mes"
    t.float "valor_total_contrato"
    t.string "domicilio_contractual"
    t.boolean "contratacion_acuerdo_comercial"
    t.boolean "contratacion_plan_adquisiciones"
    t.string "numero_contratos_escrito"
    t.string "proyecto"
    t.string "cargo_proyecto"
    t.string "reviso"
    t.string "cargo_reviso"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "anexo_plan_contratacions", "previous_studies"
  add_foreign_key "contracting_authorizations", "previous_studies"
  add_foreign_key "contractors", "previous_studies"
  add_foreign_key "equal_objects", "previous_studies"
  add_foreign_key "memorandum_contractings", "previous_studies"
  add_foreign_key "personal_inexistences", "previous_studies"
end
