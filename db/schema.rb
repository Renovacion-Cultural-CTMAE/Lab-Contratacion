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

ActiveRecord::Schema[7.0].define(version: 2022_08_02_200947) do
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
    t.string "fecha_expedicion_cedula"
    t.integer "edad"
    t.string "fecha_de_nacimiento"
    t.string "municipio_de_recidencia"
    t.string "sexo"
    t.integer "numero_de_libreta_militar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

end
