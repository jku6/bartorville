class RemovePhotosTable < ActiveRecord::Migration
  def change
    drop_table :photos
  end
end
