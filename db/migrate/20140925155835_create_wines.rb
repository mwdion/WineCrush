class CreateWines < ActiveRecord::Migration
  def change
    create_table :wines do |t|
      t.integer :vintage
      t.string :country
      t.string :region
      t.string :purveyor
      t.string :grape
      t.string :style
      t.float :btg
      t.float :btb

      t.timestamps
    end
  end
end
