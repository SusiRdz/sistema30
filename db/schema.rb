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

ActiveRecord::Schema.define(version: 20160602034652) do

  create_table "area_laborals", force: :cascade do |t|
    t.string   "nombre_area"
    t.integer  "jefe_area"
    t.string   "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "eventos", force: :cascade do |t|
    t.integer  "num_evento_id"
    t.integer  "persona_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "junta", force: :cascade do |t|
    t.integer  "num_evento_id"
    t.datetime "fecha"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "num_eventos", force: :cascade do |t|
    t.string   "tema"
    t.string   "descripcion"
    t.integer  "quien_presenta"
    t.string   "observaciones"
    t.integer  "responsable"
    t.date     "fecha_inicio"
    t.date     "fecha_compromiso"
    t.integer  "pospuesto"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "personas", force: :cascade do |t|
    t.string   "nombre"
    t.date     "fecha_nacimiento"
    t.integer  "edad"
    t.string   "curp"
    t.string   "rfc"
    t.string   "nss"
    t.string   "telefono_casa"
    t.string   "telefono_celular"
    t.string   "contacto_emergencia"
    t.string   "telefono_emergencia"
    t.date     "fecha_ingreso"
    t.integer  "jefe_directo"
    t.integer  "area_laboral_id"
    t.string   "email_coporativo"
    t.integer  "puesto_laboral_id"
    t.float    "salario"
    t.date     "fecha_egreso"
    t.boolean  "baja"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "puesto_laborals", force: :cascade do |t|
    t.string   "nombre_puesto"
    t.string   "descripcion"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "reunions", force: :cascade do |t|
    t.integer  "num_evento_id"
    t.datetime "fecha"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "sucesos", force: :cascade do |t|
    t.integer  "num_evento_id"
    t.text     "mensaje"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
