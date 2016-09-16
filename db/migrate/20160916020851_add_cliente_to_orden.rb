class AddClienteToOrden < ActiveRecord::Migration
  def change
    add_reference :ordens, :cliente, index: true, foreign_key: true
  end
end
