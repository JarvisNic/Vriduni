class AddCategorizacionToCatalogos < ActiveRecord::Migration
  def change
    add_column :catalogos, :categorizacion, :integer
  end
end
