class AddSucursalToRepartidor < ActiveRecord::Migration
  def change
    add_reference :repartidors, :sucursal, index: true, foreign_key: true
  end
end
