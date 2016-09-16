class CreateBases < ActiveRecord::Migration
  def change
    create_table :bases do |t|
t.string :nombre
t.string :apellidop
t.string :apellidom
t.string :direccion
t.string :telefono
t.string :correo
t.string :area
      t.timestamps null: false
    end
  end
end
