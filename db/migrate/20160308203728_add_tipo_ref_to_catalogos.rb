class AddTipoRefToCatalogos < ActiveRecord::Migration
  def change
    add_reference :catalogos, :tipo, index: true, foreign_key: true
  end
end
