class AddLeaderToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.references :leader, polymorphic: true
    end
  end
end
