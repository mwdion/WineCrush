class AddAttachmentAvatarToWines < ActiveRecord::Migration
  def self.up
    change_table :wines do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :wines, :avatar
  end
end
