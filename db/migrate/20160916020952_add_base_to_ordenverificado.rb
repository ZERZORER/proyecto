class AddBaseToOrdenverificado < ActiveRecord::Migration
  def change
    add_reference :ordenverificados, :base, index: true, foreign_key: true
  end
end
