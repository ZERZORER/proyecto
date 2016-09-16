class AddOrganizacionToProducto < ActiveRecord::Migration
  def change
    add_reference :productos, :organizacion, index: true, foreign_key: true
  end
end
