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

ActiveRecord::Schema.define(:version => 20120703012206) do

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

  create_table "comentario_eventos", :force => true do |t|
    t.integer  "usuario_id", :null => false
    t.integer  "evento_id",  :null => false
    t.boolean  "ativo",      :null => false
    t.datetime "cadastro",   :null => false
    t.text     "comentario", :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "contas", :force => true do |t|
    t.integer  "perfil_id",              :default => 1,                     :null => false
    t.string   "email",                                                     :null => false
    t.string   "encrypted_password",                                        :null => false
    t.boolean  "ativo",                  :default => true,                  :null => false
    t.datetime "dataCadastro",           :default => '2012-07-11 00:00:00', :null => false
    t.datetime "created_at",                                                :null => false
    t.datetime "updated_at",                                                :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "contas", ["reset_password_token"], :name => "index_contas_on_reset_password_token", :unique => true

  create_table "contatos", :force => true do |t|
    t.integer  "lista_contato_id",  :null => false
    t.integer  "usuario_id",        :null => false
    t.integer  "status_contato_id", :null => false
    t.datetime "inclusao",          :null => false
    t.datetime "alteracao",         :null => false
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "estados", :force => true do |t|
    t.string   "uf",         :limit => 2, :null => false
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "eventos", :force => true do |t|
    t.datetime "inicio",                          :null => false
    t.datetime "fim",                             :null => false
    t.string   "nome",             :limit => 150, :null => false
    t.text     "descricao",                       :null => false
    t.boolean  "privado",                         :null => false
    t.text     "endereco"
    t.boolean  "maioridade",                      :null => false
    t.boolean  "gratuito",                        :null => false
    t.boolean  "limitado",                        :null => false
    t.integer  "vagasDisponiveis"
    t.integer  "vagasOferecidas"
    t.integer  "usuario_id",                      :null => false
    t.integer  "categoria_id",                    :null => false
    t.integer  "cidade_id"
    t.integer  "status_evento_id",                :null => false
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  create_table "listas_contato", :force => true do |t|
    t.integer  "usuario_id",               :null => false
    t.string   "nome",       :limit => 30, :null => false
    t.boolean  "padrao",                   :null => false
    t.boolean  "privada",                  :null => false
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "mensagens", :force => true do |t|
    t.text     "mensagem",                          :null => false
    t.datetime "dataEnvio",                         :null => false
    t.string   "assunto",            :limit => 100, :null => false
    t.integer  "status_mensagem_id",                :null => false
    t.integer  "remetente_id",                      :null => false
    t.integer  "destinatario_id",                   :null => false
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
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
    t.string   "nome",               :limit => 100,                                    :null => false
    t.string   "webSite",            :limit => 100
    t.date     "dataNascimento"
    t.string   "sexo",               :limit => 1
    t.datetime "dataCadastro",                      :default => '2012-07-11 00:00:00', :null => false
    t.boolean  "flgMensagemPublica",                :default => true,                  :null => false
    t.boolean  "flgAddAutomatico",                  :default => false,                 :null => false
    t.integer  "cidade_id"
    t.integer  "conta_id",                                                             :null => false
    t.binary   "imagemPerfil"
    t.datetime "created_at",                                                           :null => false
    t.datetime "updated_at",                                                           :null => false
  end

end
