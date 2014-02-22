class Tag < ActiveRecord::Base
  attr_accessible :name

  has_many :photo_tags
  has_many :photos, through: :photo_tags
end
