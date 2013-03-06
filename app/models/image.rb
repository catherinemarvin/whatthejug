class Image < ActiveRecord::Base
  attr_accessible :unreviewed, :url, :tags

  acts_as_taggable
end
