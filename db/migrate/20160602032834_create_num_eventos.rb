class CreateNumEventos < ActiveRecord::Migration
  def change
    create_table :num_eventos do |t|
      t.string :tema
      t.string :descripcion
      t.integer :quien_presenta
      t.string :observaciones
      t.integer :responsable
      t.date :fecha_inicio
      t.date :fecha_compromiso
      t.integer :pospuesto

      t.timestamps null: false
    end
  end
end
