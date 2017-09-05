class CreateScenes < ActiveRecord::Migration[5.1]
  def change
    create_table :scenes do |t|
      t.string :title
      t.string :notes
      t.string :status
      t.integer :x_coord
      t.integer :y_coord
      t.integer :project_id

      t.timestamps
    end
  end
end
