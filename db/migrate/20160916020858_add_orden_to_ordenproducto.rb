class AddOrdenToOrdenproducto < ActiveRecord::Migration
  def change
    add_reference :ordenproductos, :orden, index: true, foreign_key: true
  end
end
