class CreateCatalogos < ActiveRecord::Migration
  def change
    create_table :catalogos do |t|
      t.text :nombre
      t.text :mercado
      t.integer :tipo
      t.text :infraestructura
      t.text :descripcion
      t.text :resultados
      t.string :fregistro
      t.string :informante
      t.string :entidad
      t.string :autorizado

      t.timestamps null: false
    end
  end
end
