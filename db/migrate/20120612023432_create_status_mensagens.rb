class CreateStatusMensagens < ActiveRecord::Migration
  def change
    create_table :status_mensagens do |t|

      t.timestamps
    end
  end
end
