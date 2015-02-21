class Scene < ActiveRecord::Base
  acts_as_taggable
  acts_as_taggable_on :apptags, :usetags
  
  has_paper_trail

  resourcify
end
