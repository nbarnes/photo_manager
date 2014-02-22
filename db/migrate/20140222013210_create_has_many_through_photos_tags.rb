class CreateHasManyThroughPhotosTags < ActiveRecord::Migration

    create_table :photo_tag do |t|
      t.belongs_to :photo
      t.belongs_to :tag
      t.timestamps
    end

    add_index :photo_tag, :photo_id
    add_index :photo_tag, :tag_id

end
