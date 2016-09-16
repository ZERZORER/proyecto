class AddRepartidorToVehiculo < ActiveRecord::Migration
  def change
    add_reference :vehiculos, :repartidor, index: true, foreign_key: true
  end
end
