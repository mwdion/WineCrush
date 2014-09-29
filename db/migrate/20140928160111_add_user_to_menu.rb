class AddUserToMenu < ActiveRecord::Migration
  def change
    add_reference :menus, :user, index: true
  end
end
