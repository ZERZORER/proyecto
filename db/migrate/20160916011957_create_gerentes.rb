class CreateGerentes < ActiveRecord::Migration
  def change
    create_table :gerentes do |t|
t.string :nombre
t.string :apellidop
t.string :apellidom
t.string :direccion
t.string :telefono
t.string :correo
      t.timestamps null: false
    end
  end
end
