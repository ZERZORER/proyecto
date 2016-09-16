class AddSucursalToGerente < ActiveRecord::Migration
  def change
    add_reference :gerentes, :sucursal, index: true, foreign_key: true
  end
end
