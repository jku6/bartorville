class Trade < ActiveRecord::Base
    belongs_to :receiver, :class_name => 'User', :foreign_key => 'user_receiver_id'
    belongs_to :sender, :class_name => 'User', :foreign_key => 'user_sender_id'
    belongs_to :item_receiver, :class_name => 'Item', :foreign_key => 'item_receiver_id'
    belongs_to :item_sender, :class_name => 'Item', :foreign_key => 'item_sender_id'
end