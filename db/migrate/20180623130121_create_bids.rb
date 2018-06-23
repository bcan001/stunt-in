class CreateBids < ActiveRecord::Migration[5.2]
  def change
    create_table :bids do |t|
    	t.integer :user_id
    	t.integer :item_id
    	t.decimal :price, :precision => 8, :scale => 2
      t.datetime :expires_at
    end
    add_index :bids, :user_id
    add_index :bids, :item_id
  end
end
