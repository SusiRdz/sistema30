class CreateEventos < ActiveRecord::Migration
  def change
    create_table :eventos do |t|
      t.integer :num_evento_id
      t.integer :persona_id

      t.timestamps null: false
    end
  end
end
