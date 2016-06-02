class CreateSucesos < ActiveRecord::Migration
  def change
    create_table :sucesos do |t|
      t.integer :num_evento_id
      t.text :mensaje

      t.timestamps null: false
    end
  end
end
