class PhotoTag < ActiveRecord::Base

  attr_accessible :photo, :tag

  belongs_to :photo
  belongs_to :tag

end
