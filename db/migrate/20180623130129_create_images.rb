class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
    	t.string :parent_type # polymorphic, designer OR item OR profile
    	t.integer :parent_id
    	t.string :url
    end
    add_index :images, [:parent_type,:parent_id]
  end
end
