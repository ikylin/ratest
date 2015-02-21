class CreateApidirs < ActiveRecord::Migration
  def change
    create_table :apidirs do |t|
      t.string :dir
      t.text :desc

      t.timestamps
    end
  end
end
