class AddPagoToOrdenverificado < ActiveRecord::Migration
  def change
    add_reference :ordenverificados, :pago, index: true, foreign_key: true
  end
end
