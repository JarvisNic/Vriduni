class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :siglas
      t.string :email
      t.string :password_digest
      t.date :fingreso
      t.integer :tipo

      t.timestamps null: false
    end
  end
end
