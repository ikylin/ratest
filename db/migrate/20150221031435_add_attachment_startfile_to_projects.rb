class AddAttachmentStartfileToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.attachment :startfile
    end
  end

  def self.down
    remove_attachment :projects, :startfile
  end
end
