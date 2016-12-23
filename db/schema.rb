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

ActiveRecord::Schema.define(version: 20161223134251) do

  create_table "Idioma", primary_key: "idioma", force: :cascade do |t|
  end

  create_table "colaboradores", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contatos", force: :cascade do |t|
    t.string   "texto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dados", force: :cascade do |t|
    t.text     "ano"
    t.text     "nivel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "disciplinas", force: :cascade do |t|
    t.string   "texto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "idioma"
  end

  create_table "disciplinas2s", force: :cascade do |t|
    t.string   "texto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "idioma"
  end

  create_table "disciplinas3s", force: :cascade do |t|
    t.string   "texto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "idioma"
  end

  create_table "docentes", force: :cascade do |t|
    t.text     "nome"
    t.integer  "linha"
    t.text     "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "egressos", force: :cascade do |t|
    t.integer  "ano"
    t.text     "nivel"
    t.text     "nome"
    t.text     "lattes"
    t.text     "orientador"
    t.date     "defesa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "eventos", force: :cascade do |t|
    t.text     "titulo"
    t.text     "link"
    t.text     "texto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "idioma"
  end

  create_table "finais", force: :cascade do |t|
    t.string   "texto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "idioma"
  end

  create_table "financas", force: :cascade do |t|
    t.string   "cabecalho"
    t.string   "texto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "idioma"
  end

  create_table "grupos", force: :cascade do |t|
    t.string   "texto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "idioma"
  end

  create_table "idiomas", force: :cascade do |t|
    t.integer  "aux"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "linhas", force: :cascade do |t|
    t.string   "texto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "idioma"
  end

  create_table "links", force: :cascade do |t|
    t.text     "link"
    t.text     "texto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "processo_seletivos", force: :cascade do |t|
    t.text     "cabecalho"
    t.text     "mestrado"
    t.text     "texto1"
    t.text     "doutorado"
    t.text     "texto2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "idioma"
  end

  create_table "publicas", force: :cascade do |t|
    t.text     "titulo"
    t.text     "texto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.string   "reset_digest"
    t.datetime "reset_sent_at"
    t.boolean  "admin"
  end

  create_table "visitantes", force: :cascade do |t|
    t.integer  "idioma"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
