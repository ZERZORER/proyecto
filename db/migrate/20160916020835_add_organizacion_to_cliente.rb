class AddOrganizacionToCliente < ActiveRecord::Migration
  def change
    add_reference :clientes, :organizacion, index: true, foreign_key: true
  end
end
