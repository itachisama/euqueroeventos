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

ActiveRecord::Schema.define(:version => 20120622025115) do

  create_table "categorias", :force => true do |t|
    t.string   "nome",       :limit => 30, :null => false
    t.boolean  "ativo",                    :null => false
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "cidades", :force => true do |t|
    t.string   "nome",       :limit => 50, :null => false
    t.integer  "estado_id",                :null => false
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "contas", :force => true do |t|
    t.integer  "usuario_id",         :null => false
    t.integer  "perfil_id",          :null => false
    t.string   "email",              :null => false
    t.string   "encrypted_password", :null => false
    t.boolean  "ativo",              :null => false
    t.datetime "dataCadastro",       :null => false
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "estados", :force => true do |t|
    t.string   "uf",         :limit => 2, :null => false
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "perfis", :force => true do |t|
    t.string   "nome",       :limit => 50, :null => false
    t.boolean  "ativo",                    :null => false
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "status_contatos", :force => true do |t|
    t.string   "nome",       :limit => 30, :null => false
    t.string   "codigo",     :limit => 3,  :null => false
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "status_eventos", :force => true do |t|
    t.string   "nome",       :limit => 30, :null => false
    t.string   "codigo",     :limit => 3,  :null => false
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "status_mensagens", :force => true do |t|
    t.string   "nome",       :limit => 30, :null => false
    t.string   "codigo",     :limit => 3,  :null => false
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "tags", :force => true do |t|
    t.string   "nome",       :limit => 20, :null => false
    t.boolean  "ativo",                    :null => false
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "usuarios", :force => true do |t|
    t.string   "nome",               :limit => 100, :null => false
    t.string   "webSite",            :limit => 100
    t.date     "dataNascimento"
    t.string   "sexo",               :limit => 1,   :null => false
    t.datetime "dataCadastro",                      :null => false
    t.boolean  "flgMensagemPublica",                :null => false
    t.boolean  "flgAddAutomatico",                  :null => false
    t.integer  "cidade_id",                         :null => false
    t.binary   "imagemPerfil"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

end
