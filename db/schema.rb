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

ActiveRecord::Schema.define(version: 20160916020952) do

  create_table "bases", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellidop"
    t.string   "apellidom"
    t.string   "direccion"
    t.string   "telefono"
    t.string   "correo"
    t.string   "area"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "sucursal_id"
  end

  add_index "bases", ["sucursal_id"], name: "index_bases_on_sucursal_id"

  create_table "clientes", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellidop"
    t.string   "apellidom"
    t.string   "direccion"
    t.string   "telefono"
    t.string   "correo"
    t.string   "tarjeta"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "organizacion_id"
  end

  add_index "clientes", ["organizacion_id"], name: "index_clientes_on_organizacion_id"

  create_table "gerentes", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellidop"
    t.string   "apellidom"
    t.string   "direccion"
    t.string   "telefono"
    t.string   "correo"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "sucursal_id"
  end

  add_index "gerentes", ["sucursal_id"], name: "index_gerentes_on_sucursal_id"

  create_table "ordenproductos", force: :cascade do |t|
    t.integer  "cantidad"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "orden_id"
    t.integer  "producto_id"
  end

  add_index "ordenproductos", ["orden_id"], name: "index_ordenproductos_on_orden_id"
  add_index "ordenproductos", ["producto_id"], name: "index_ordenproductos_on_producto_id"

  create_table "ordens", force: :cascade do |t|
    t.date     "fecha"
    t.integer  "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "cliente_id"
  end

  add_index "ordens", ["cliente_id"], name: "index_ordens_on_cliente_id"

  create_table "ordenverificados", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "pago_id"
    t.integer  "base_id"
  end

  add_index "ordenverificados", ["base_id"], name: "index_ordenverificados_on_base_id"
  add_index "ordenverificados", ["pago_id"], name: "index_ordenverificados_on_pago_id"

  create_table "organizacions", force: :cascade do |t|
    t.string   "nombre"
    t.string   "direccion"
    t.string   "telefono"
    t.string   "correo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pagos", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "orden_id"
  end

  add_index "pagos", ["orden_id"], name: "index_pagos_on_orden_id"

  create_table "productos", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "precio"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "organizacion_id"
  end

  add_index "productos", ["organizacion_id"], name: "index_productos_on_organizacion_id"

  create_table "repartidors", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellidop"
    t.string   "apellidom"
    t.string   "direccion"
    t.string   "telefono"
    t.string   "correo"
    t.string   "licenciavigente"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "sucursal_id"
  end

  add_index "repartidors", ["sucursal_id"], name: "index_repartidors_on_sucursal_id"

  create_table "sucursals", force: :cascade do |t|
    t.string   "nombre"
    t.string   "direccion"
    t.string   "telefono"
    t.string   "correo"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "organizacion_id"
  end

  add_index "sucursals", ["organizacion_id"], name: "index_sucursals_on_organizacion_id"

  create_table "vehiculos", force: :cascade do |t|
    t.string   "modelo"
    t.string   "placa"
    t.string   "estado"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "repartidor_id"
  end

  add_index "vehiculos", ["repartidor_id"], name: "index_vehiculos_on_repartidor_id"

end
