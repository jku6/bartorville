# == Schema Information
#
# Table name: items
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :string(255)
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  photo       :string(255)
#

class Item < ActiveRecord::Base
  belongs_to :user
  mount_uploader :photo, ImageUploader
  
end
