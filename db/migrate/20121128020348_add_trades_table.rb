class AddTradesTable < ActiveRecord::Migration
    def change
    create_table :trades do |t|

      t.integer :user_receiver_id
      t.integer :user_sender_id
      t.integer :item_receiver_id
      t.integer :item_sender_id
      t.boolean  "approval"
      t.timestamps
    end
  end
end
