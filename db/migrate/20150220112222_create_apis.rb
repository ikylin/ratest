class CreateApis < ActiveRecord::Migration
  def change
    create_table :apis do |t|
      t.string :bid
      t.string :name
      t.text :desc

      t.timestamps
    end
  end
end
