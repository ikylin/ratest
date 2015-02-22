class AddFtypeToFaq < ActiveRecord::Migration
  def change
    add_column :faqs, :ftype, :string
  end
end
