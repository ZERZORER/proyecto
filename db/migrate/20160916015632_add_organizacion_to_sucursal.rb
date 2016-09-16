class AddOrganizacionToSucursal < ActiveRecord::Migration
  def change
    add_reference :sucursals, :organizacion, index: true, foreign_key: true
  end
end
