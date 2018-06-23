class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
    	t.string :name # top,bottom,footwear,accessories
    end
    add_index :categories, :name
  end
end
