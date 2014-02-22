class Photo < ActiveRecord::Base
  acts_as_taggable

  default_scope order('created_at ASC')

  attr_accessible :title, :image, :tag_list

  validates :title, length: { in: 2..255 }

  mount_uploader :image, ImageUploader
end
