class AddColumnUserTypeToMenu < ActiveRecord::Migration
  def change
    add_column :menus, :user_type, :string
  end
end
