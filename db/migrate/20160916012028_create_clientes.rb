class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
t.string :nombre
t.string :apellidop
t.string :apellidom
t.string :direccion
t.string :telefono
t.string :correo
t.string :tarjeta
      t.timestamps null: false
    end
  end
end
