class Faq < ActiveRecord::Base
  extend Enumerize
  
  enumerize :ftype, in: [:tool, :use]

  has_paper_trail

  resourcify
end
