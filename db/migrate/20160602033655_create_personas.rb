class CreatePersonas < ActiveRecord::Migration
  def change
    create_table :personas do |t|
      t.string :nombre
      t.date :fecha_nacimiento
      t.integer :edad
      t.string :curp
      t.string :rfc
      t.string :nss
      t.string :telefono_casa
      t.string :telefono_celular
      t.string :contacto_emergencia
      t.string :telefono_emergencia
      t.date :fecha_ingreso
      t.integer :jefe_directo
      t.integer :area_laboral_id
      t.string :email_coporativo
      t.integer :puesto_laboral_id
      t.float :salario
      t.date :fecha_egreso
      t.boolean :baja

      t.timestamps null: false
    end
  end
end
