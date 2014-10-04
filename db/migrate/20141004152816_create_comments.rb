class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.string :commentable_type
      t.integer :commentable_id
      t.integer :user_id
      t.string :email

      t.timestamps
    end
  end
end
