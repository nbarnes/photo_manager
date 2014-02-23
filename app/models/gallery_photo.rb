class GalleryPhoto < ActiveRecord::Base
  attr_accessible :gallery, :photo
  belongs_to :gallery
  belongs_to :photo
end
