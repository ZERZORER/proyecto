class AddSucursalToBase < ActiveRecord::Migration
  def change
    add_reference :bases, :sucursal, index: true, foreign_key: true
  end
end
