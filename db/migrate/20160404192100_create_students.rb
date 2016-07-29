class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :n_carnet
      t.string :name
      t.string :last_name
      t.string :facultad
      t.string :tel
      t.string :cel
      t.string :email
      t.string :formacion
      t.text :experiencia
      t.integer :proyecto_id

      t.timestamps null: false
    end
  end
end
