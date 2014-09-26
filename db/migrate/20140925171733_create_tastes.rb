class CreateTastes < ActiveRecord::Migration
  def change
    create_table :tastes do |t|
      t.string :flavor
      t.string :style

      t.timestamps
    end
  end
end
