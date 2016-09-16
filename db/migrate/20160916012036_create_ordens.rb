class CreateOrdens < ActiveRecord::Migration
  def change
    create_table :ordens do |t|
t.date :fecha
t.integer :total
      t.timestamps null: false
    end
  end
end
