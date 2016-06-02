class CreateAreaLaborals < ActiveRecord::Migration
  def change
    create_table :area_laborals do |t|
      t.string :nombre_area
      t.integer :jefe_area
      t.string :descripcion

      t.timestamps null: false
    end
  end
end
