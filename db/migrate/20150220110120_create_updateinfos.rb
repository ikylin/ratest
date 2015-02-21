class CreateUpdateinfos < ActiveRecord::Migration
  def change
    create_table :updateinfos do |t|
      t.string :title
      t.text :desc

      t.timestamps
    end
  end
end
