class Photo < ActiveRecord::Base
  acts_as_taggable

  default_scope order('created_at ASC')

  attr_accessible :title, :image, :tag_list

  validates :title, length: { in: 2..255 }

  mount_uploader :image, ImageUploader

  has_many :photo_tags
  has_many :tags, through: :photo_tags

  has_many :gallary_photos, :dependent => :destroy
  has_many :gallaries, :through => :gallary_photos

end
