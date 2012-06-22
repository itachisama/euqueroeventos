class CreateStatusEventos < ActiveRecord::Migration
  def change
    create_table :status_eventos do |t|

      t.timestamps
    end
  end
end
