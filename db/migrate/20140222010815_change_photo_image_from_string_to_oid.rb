class ChangePhotoImageFromStringToOid < ActiveRecord::Migration
  def up
    remove_column :photos, :image
    add_column :photos, :image, :oid
  end

  def down
    add_column :photos, :image, :string
    remove_column :photos, :image
  end
end
