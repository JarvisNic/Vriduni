class CreateConvenios < ActiveRecord::Migration
  def change
    create_table :convenios do |t|
      t.string :nombre
      t.text :objetivo
      t.string :responsable
      t.string :area
      t.string :pdf
      t.string :categoria
      t.date :fecha_inicio
      t.date :fecha_fin
      t.date :fecha_firma

      t.timestamps null: false
    end
  end
end
