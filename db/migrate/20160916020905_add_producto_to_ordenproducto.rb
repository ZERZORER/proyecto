class AddProductoToOrdenproducto < ActiveRecord::Migration
  def change
    add_reference :ordenproductos, :producto, index: true, foreign_key: true
  end
end
