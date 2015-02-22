class Faq < ActiveRecord::Base
  include RailsAdminCharts
  extend Enumerize
  
  enumerize :ftype, in: [:tool, :use]

  has_paper_trail

  resourcify
end
