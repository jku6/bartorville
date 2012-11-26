# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  caption    :string(255)
#  image      :string(255)
#  item_id    :integer
#  is_primary :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Photo < ActiveRecord::Base
    belongs_to :item
    mount_uploader :image, ImageUploader
    default_scope order(:id)
end
