class CreateVehiculos < ActiveRecord::Migration
  def change
    create_table :vehiculos do |t|
t.string :modelo
t.string :placa
t.string :estado
      t.timestamps null: false
    end
  end
end
