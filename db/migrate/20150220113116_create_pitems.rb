class CreatePitems < ActiveRecord::Migration
  def change
    create_table :pitems do |t|
      t.string :gpattern
      t.integer :oid
      t.string :name
      t.string :itype
      t.boolean :opt
      t.text :samp
      t.text :default
      t.text :desc

      t.timestamps
    end
  end
end
