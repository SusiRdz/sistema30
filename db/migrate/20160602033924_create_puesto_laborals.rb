class CreatePuestoLaborals < ActiveRecord::Migration
  def change
    create_table :puesto_laborals do |t|
      t.string :nombre_puesto
      t.string :descripcion

      t.timestamps null: false
    end
  end
end
