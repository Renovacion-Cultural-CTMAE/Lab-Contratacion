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

ActiveRecord::Schema[7.0].define(version: 2022_09_14_140823) do
  create_table "contract_movements", force: :cascade do |t|
    t.integer "numero_contrato"
    t.integer "numero_movimiento"
    t.date "fecha_movimiento"
    t.integer "valor_movimiento"
    t.integer "saldo"
    t.text "observacion"
    t.integer "contract_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contract_id"], name: "index_contract_movements_on_contract_id"
  end

  create_table "contract_requirements", force: :cascade do |t|
    t.integer "numero_contrato"
    t.string "requisitos"
    t.integer "codigo_requisitos"
    t.string "nombre_requisito"
    t.integer "contract_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contract_id"], name: "index_contract_requirements_on_contract_id"
  end

  create_table "contract_statuses", force: :cascade do |t|
    t.integer "numero_contrato"
    t.date "fecha_del_estado"
    t.string "motivos_contrato"
    t.integer "contract_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contract_id"], name: "index_contract_statuses_on_contract_id"
  end

  create_table "contract_supervisors", force: :cascade do |t|
    t.integer "cedula_supervisor"
    t.integer "numero_contrato"
    t.date "fecha_inicio_supervicion"
    t.integer "cedula_contratista"
    t.integer "contract_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contract_id"], name: "index_contract_supervisors_on_contract_id"
  end

  create_table "contractor_professions", force: :cascade do |t|
    t.integer "cedula_contratista"
    t.string "codigo_profesion"
    t.string "nombre_profesion"
    t.integer "contractor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contractor_id"], name: "index_contractor_professions_on_contractor_id"
  end

  create_table "contractors", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.integer "cedula_contratista"
    t.string "lugar_expedicion_cedula"
    t.datetime "fecha_expedicion_cedula"
    t.integer "edad"
    t.datetime "fecha_de_nacimiento"
    t.string "municipio_de_recidencia"
    t.string "sexo"
    t.integer "numero_de_libreta_militar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contracts", force: :cascade do |t|
    t.integer "cedula_contratista"
    t.integer "numero_contrato"
    t.date "fecha_contrato"
    t.float "valor_contrato"
    t.string "objeto_contrato"
    t.integer "contractor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contractor_id"], name: "index_contracts_on_contractor_id"
  end

  create_table "emails", force: :cascade do |t|
    t.integer "cedula_de_contratistas"
    t.string "correo"
    t.boolean "activo"
    t.integer "contractor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contractor_id"], name: "index_emails_on_contractor_id"
  end

  create_table "healths", force: :cascade do |t|
    t.integer "codigo_nit_eps"
    t.string "nombre_eps"
    t.integer "telefono_eps"
    t.string "ciudad_eps"
    t.string "correo_eps"
    t.integer "cedula_contratista"
    t.integer "contractor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contractor_id"], name: "index_healths_on_contractor_id"
  end

  create_table "payments", force: :cascade do |t|
    t.integer "numero_contrato"
    t.integer "numero_pago"
    t.date "fecha_pago"
    t.float "valor_pago"
    t.text "observaciones"
    t.integer "contract_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contract_id"], name: "index_payments_on_contract_id"
  end

  create_table "pensions", force: :cascade do |t|
    t.integer "cedula_contratista"
    t.integer "nit_de_la_entidad"
    t.string "nombre_la_entidad"
    t.string "telefono_de_la_entidad"
    t.string "ciudad_de_la_entidad"
    t.string "correo_de_la_entidad"
    t.integer "contractor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contractor_id"], name: "index_pensions_on_contractor_id"
  end

  create_table "phones", force: :cascade do |t|
    t.integer "cedula_de_contratistas"
    t.string "numero_de_telefono"
    t.string "operador"
    t.boolean "activo"
    t.integer "contractor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contractor_id"], name: "index_phones_on_contractor_id"
  end

  create_table "supervisors", force: :cascade do |t|
    t.integer "cedula_supervisor"
    t.string "nombre"
    t.string "apellido"
    t.string "telefono"
    t.string "correo"
    t.string "cargo"
    t.integer "contract_supervisor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contract_supervisor_id"], name: "index_supervisors_on_contract_supervisor_id"
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

end
