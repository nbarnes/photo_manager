class Photo < ActiveRecord::Base
  default_scope order('created_at ASC')

  attr_accessible :title, :image

  validates :title, length: { in: 2..255 }

  mount_uploader :image, ImageUploader
end
