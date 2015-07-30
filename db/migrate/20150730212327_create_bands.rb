class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :name
      t.string :genre
      t.integer :location_id
      t.string :location_type

      t.timestamps null: false
    end
  end
end
