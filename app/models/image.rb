class Image < ActiveRecord::Base
  attr_accessible :unreviewed, :url

  acts_as_taggable
end
