class Project < ActiveRecord::Base
  has_many :users, :as => :leader

  has_paper_trail

  resourcify
end
