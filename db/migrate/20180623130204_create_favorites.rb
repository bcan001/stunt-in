class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
    	t.integer :user_id
    	t.string :like_type # item, designer
    	t.integer :like_id
    end
    add_index :favorites, [:like_type,:like_id]
    add_index :favorites, [:user_id,:like_type]
  end
end
