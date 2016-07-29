class CreateTipos < ActiveRecord::Migration
  def change
    create_table :tipos do |t|
      t.integer :id_servicio
      t.string :descripcion

      t.timestamps null: false
    end
  end
end
