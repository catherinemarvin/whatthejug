class Image < ActiveRecord::Base
  attr_accessible :unreviewed, :url, :tags, :source

  attr_accessible :data

  before_create :set_default_values

  has_attached_file :data,
    :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
    :url => "/system/:attachment/:id/:style/:filename"

  acts_as_taggable

  def set_default_values
    self.unreviewed ||= true
  end
end
