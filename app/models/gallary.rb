class Gallary < ActiveRecord::Base
  attr_accessible :name

  has_many :gallary_photos, :dependent => :destroy
  has_many :photos, :through => :gallary_photos

end
