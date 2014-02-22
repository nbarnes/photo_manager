class GallaryPhoto < ActiveRecord::Base
  attr_accessible :gallary, :photo
  belongs_to :gallary
  belongs_to :photo
end
