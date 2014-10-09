class RemoveColumnImagesFromWine < ActiveRecord::Migration
  def change
    remove_column :wines, :image
  end
end
