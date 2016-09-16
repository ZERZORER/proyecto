class AddOrdenToPago < ActiveRecord::Migration
  def change
    add_reference :pagos, :orden, index: true, foreign_key: true
  end
end
