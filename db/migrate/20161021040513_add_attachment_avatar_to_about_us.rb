class AddAttachmentAvatarToAboutUs < ActiveRecord::Migration
  def self.up
    change_table :about_us do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :about_us, :avatar
  end
end
