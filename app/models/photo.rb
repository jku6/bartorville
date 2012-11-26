class Photo < ActiveRecord::Base
    belongs_to :item
    mount_uploader :image, ImageUploader
    default_scope order(:id)
end