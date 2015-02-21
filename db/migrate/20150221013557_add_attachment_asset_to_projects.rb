class AddAttachmentAssetToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.attachment :asset
    end
  end

  def self.down
    remove_attachment :projects, :asset
  end
end
