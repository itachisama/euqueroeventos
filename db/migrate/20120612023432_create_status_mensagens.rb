class CreateStatusMensagens < ActiveRecord::Migration
  def change
    create_table :status_mensagens do |t|
		t.string :nome, :limit=>30, :null=>false
		t.string :codigo, :limit=>3, :null=>false
		t.timestamps
    end
  end
end
