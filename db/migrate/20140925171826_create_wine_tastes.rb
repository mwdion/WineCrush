class CreateWineTastes < ActiveRecord::Migration
  def change
    create_table :wine_tastes do |t|
      t.integer :wine_id
      t.integer :taste_id

      t.timestamps
    end
  end
end
