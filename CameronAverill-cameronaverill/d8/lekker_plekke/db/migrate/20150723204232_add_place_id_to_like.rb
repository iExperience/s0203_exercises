class AddPlaceIdToLike < ActiveRecord::Migration
  def change
    add_column :likes, :place_id, :integer
  end
end
