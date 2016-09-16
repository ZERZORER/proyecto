class CreateRepartidors < ActiveRecord::Migration
  def change
    create_table :repartidors do |t|
t.string :nombre
t.string :apellidop
t.string :apellidom
t.string :direccion
t.string :telefono
t.string :correo
t.string :licenciavigente
      t.timestamps null: false
    end
  end
end
