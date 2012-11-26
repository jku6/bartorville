class AddPhotosTable < ActiveRecord::Migration
  def change
        create_table :photos do |t|
            t.string :caption
            t.string :image
            t.integer :item_id
            t.boolean :is_primary
            t.timestamps
        end
    end
end
