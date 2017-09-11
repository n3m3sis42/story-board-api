class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.string :first_name
      t.string :last_name
      t.date :birthdate
      t.string :hometown
      t.string :likes
      t.string :dislikes
      t.integer :user_id

      t.timestamps
    end
  end
end
