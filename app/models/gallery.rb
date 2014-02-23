class Gallery < ActiveRecord::Base
  attr_accessible :name, :photo_ids, :gallery_photos

  has_many :gallery_photos, :dependent => :destroy
  has_many :photos, :through => :gallery_photos
end
