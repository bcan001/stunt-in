class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
    	t.integer :user_id
    	t.string :name
    	t.text :description
    	t.decimal :price, :precision => 8, :scale => 2
    	t.string :category # top,bottom,footwear,accessories
    	t.string :size
    	t.string :brand
    end
    add_index :items, :user_id
    add_index :items, :category
    add_index :items, :size
    add_index :items, :brand
  end
end


# Item (belongs to User, sale_type='sale','buy'). schema: user_id, sale_type, name, description, cost, category=top,bottom,footwear,accessories) (has_many bids) (has_many images) 


# https://github.com/RubyMoney/money


# https://blog.bigbinary.com/2013/01/14/handling-money-in-ruby.html



# You'll probably want to use a DECIMAL type in your database. In your migration, do something like this:

# # precision is the total number of digits
# # scale is the number of digits to the right of the decimal point
# add_column :items, :price, :decimal, :precision => 8, :scale => 2
# In Rails, the :decimal type is returned as BigDecimal, which is great for price calculation.

# If you insist on using integers, you will have to manually convert to and from BigDecimals everywhere, which will probably just become a pain.

# https://stackoverflow.com/questions/1019939/what-is-the-best-method-of-handling-currency-money
# add_column :items, :price, :decimal, :precision => 8, :scale => 2
