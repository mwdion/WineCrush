class CreateUserTastes < ActiveRecord::Migration
  def change
    create_table :user_tastes do |t|
      t.integer :user_id
      t.integer :taste_id

      t.timestamps
    end
  end
end
