class CreateGalleryPhotos < ActiveRecord::Migration
  def change
    create_table :gallery_photos do |t|
      t.integer :gallery_id
      t.integer :photo_id
      t.timestamps
    end

    add_index(:gallery_photos, :gallery_id)
    add_index(:gallery_photos, :photo_id)
  end
end
