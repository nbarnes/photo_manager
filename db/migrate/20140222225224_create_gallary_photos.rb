class CreateGallaryPhotos < ActiveRecord::Migration
  def change
    create_table :gallary_photos do |t|
      t.integer :gallary_id
      t.integer :photo_id
      t.timestamps
    end

    add_index(:gallary_photos, :gallary_id)
    add_index(:gallary_photos, :photo_id)
  end
end
