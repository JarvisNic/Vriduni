class AddTipoinvesToProyectos < ActiveRecord::Migration
  def change
    add_column :proyectos, :tipoinvest, :string
  end
end
