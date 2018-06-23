class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
    	t.string :title
    	t.text :description
    	t.datetime :published_at
    	t.string :author
    end
    add_index :articles, :published_at
  end
end
