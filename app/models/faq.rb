class Faq < ActiveRecord::Base
  include RailsAdminCharts
  extend Enumerize
  
  enumerize :ftype, in: [:tool, :use]

  after_initialize do
    if new_record?
      self.question ||= 'sample question' # be VERY careful with ||= and False values
    end
  end

  has_paper_trail

  resourcify
end
