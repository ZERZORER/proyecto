class CreateOrdenverificados < ActiveRecord::Migration
  def change
    create_table :ordenverificados do |t|

      t.timestamps null: false
    end
  end
end
