class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
    	t.integer :from_user_id
    	t.integer :to_user_id
    	t.string :title
    	t.text :description
    	t.string :send_type # item OR direct, is polymorphic
    	t.integer :send_id
    end
    add_index :messages, :from_user_id
    add_index :messages, :to_user_id
    add_index :messages, [:send_type,:send_id]
  end
end

