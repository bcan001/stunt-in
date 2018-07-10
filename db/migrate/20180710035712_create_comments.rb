class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
    	t.integer :user_id
    	# can belong to an article OR an item
    	t.integer :article_id
    	t.integer :item_id
    	t.text :content
    end
    add_index :comments, :user_id
    add_index :comments, :article_id
    add_index :comments, :item_id
  end
end
