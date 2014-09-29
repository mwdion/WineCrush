class AddColumnsToWine < ActiveRecord::Migration
  def change
    add_column :wines, :menuable_type, :string
    add_column :wines, :menuable_id, :integer
  end
end
