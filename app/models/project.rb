class Project < ActiveRecord::Base
  has_many :users, :as => :leader
  
  has_attached_file :asset,
    :styles => {
      :thumb => "100x100#",
      :small  => "150x150>",
      :medium => "200x200" }
  validates_attachment_content_type :asset, :content_type => /\Aimage\/.*\Z/
  # add a delete_<asset_name> method: 
  attr_accessor :delete_asset
  before_validation { self.asset.clear if self.delete_asset == '1' }

  has_attached_file :startfile,
  :path => ":rails_root/public/uploads/:class/:basename.:id.:extension",
  :url => "/uploads/:class/:basename.:id.:extension",
  :default_url => "/uploads/default.txt"
  
  validates_attachment :startfile, :presence => true,
  :content_type => { :content_type => ["application/vnd.ms-excel", "application/excel", "text/plain"] } ,
  #:content_type_mappings => { :xls => "text/plain" },
  #:matches => [/xls\Z/],
  :size => { :in => 0..1000.kilobytes }

  has_paper_trail

  resourcify
end
