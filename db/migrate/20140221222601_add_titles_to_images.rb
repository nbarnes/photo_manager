class AddTitlesToImages < ActiveRecord::Migration
  def change
    add_column :photos, :title, :string
  end
end
