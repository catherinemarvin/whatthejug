class Image < ActiveRecord::Base
  attr_accessible :unreviewed, :url, :tags

  attr_accessible :data
  has_attached_file :data,
    :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
    :url => "/system/:attachment/:id/:style/:filename"

  acts_as_taggable
end
