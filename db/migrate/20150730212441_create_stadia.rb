class CreateStadia < ActiveRecord::Migration
  def change
    create_table :stadia do |t|
      t.string :name
      t.integer :capacity
      t.string :sport

      t.timestamps null: false
    end
  end
end
