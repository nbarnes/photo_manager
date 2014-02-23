class Photo < ActiveRecord::Base
  acts_as_taggable

  default_scope order('photos.created_at ASC')

  attr_accessible :title, :image, :tag_list, :galleries, :gallery_photos

  validates :title, length: { in: 2..255 }

  mount_uploader :image, ImageUploader

  has_many :photo_tags
  has_many :tags, through: :photo_tags

  has_many :gallery_photos, :dependent => :destroy
  has_many :galleries, :through => :gallery_photos

end
