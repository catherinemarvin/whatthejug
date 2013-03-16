class Image < ActiveRecord::Base
  attr_accessible :unreviewed, :url, :tags

  attr_accessible :data
  has_attached_file :data

  acts_as_taggable
end
