class CreateOrdenproductos < ActiveRecord::Migration
  def change
    create_table :ordenproductos do |t|
t.integer :cantidad
      t.timestamps null: false
    end
  end
end
