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

ActiveRecord::Schema.define(:version => 20120517135000) do

  create_table "alugueis", :force => true do |t|
    t.integer  "finalizado"
    t.integer  "cliente_id"
    t.datetime "data_saida"
    t.datetime "data_devolucao"
    t.float    "valor"
    t.integer  "qtde_filmes"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "alugueis", ["cliente_id"], :name => "index_alugueis_on_cliente_id"

  create_table "alugueis_filmes", :force => true do |t|
    t.integer "aluguel_id"
    t.integer "filme_id"
  end

  create_table "clientes", :force => true do |t|
    t.string   "nome"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "filmes", :force => true do |t|
    t.string   "nome"
    t.integer  "ano"
    t.string   "diretor"
    t.integer  "genero_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "qtde"
  end

  add_index "filmes", ["genero_id"], :name => "index_filmes_on_genero_id"

  create_table "generos", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
