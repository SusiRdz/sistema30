class CreateReunions < ActiveRecord::Migration
  def change
    create_table :reunions do |t|
      t.integer :num_evento_id
      t.datetime :fecha

      t.timestamps null: false
    end
  end
end
