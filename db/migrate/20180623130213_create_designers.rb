class CreateDesigners < ActiveRecord::Migration[5.2]
  def change
    create_table :designers do |t|
    	t.string :name
    	t.text :description
    end
    add_index :designers, :name
  end
end
