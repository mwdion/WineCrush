class AddColumnToWine < ActiveRecord::Migration
  def change
    add_column :wines, :visible, :string
  end
end
