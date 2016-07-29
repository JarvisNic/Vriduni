class CreateProyectos < ActiveRecord::Migration
  def change
    create_table :proyectos do |t|
      t.string :nombre
      t.date :fecha_inicio
      t.date :fecha_fin
      t.string :duracion
      t.string :area
      t.string :linea
      t.text :resumen
      t.text :problema
      t.text :justificacion
      t.text :marco
      t.text :objetivo_general
      t.text :objetivo_especifico
      t.text :tipo_estudio
      t.text :proc_tratamiento
      t.text :proc_eticos
      t.text :conclusion
      t.integer :id_publicacion
      t.integer :id_cronograma

      t.timestamps null: false
    end
  end
end
