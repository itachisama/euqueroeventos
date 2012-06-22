class CreateEventos < ActiveRecord::Migration
  def change
    create_table :eventos do |t|
      t.datetime :inicio
      t.datetime :fim
      t.string :nome
      t.text :descricao
      t.boolean :privado
      t.text :endereco
      t.boolean :maioridade
      t.boolean :gratuito
      t.boolean :limitado
      t.integer :vagasDisponiveis
      t.integer :vagasOferecidas
      t.integer :usuario_id
      t.integer :categoria_id
      t.integer :cidade_id
      t.integer :status_evento_id

      t.timestamps
    end
  end
end
