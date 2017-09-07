class CreatePositions < ActiveRecord::Migration[5.1]
  def change
    create_table :positions do |t|
      t.integer :x
      t.integer :y
      t.integer :scene_id

      t.timestamps
    end
  end
end
