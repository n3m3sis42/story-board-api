class CreateScenes < ActiveRecord::Migration[5.1]
  def change
    create_table :scenes do |t|
      t.string :title
      t.string :notes

      t.timestamps
    end
  end
end
