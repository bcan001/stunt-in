# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# class CreateItems < ActiveRecord::Migration[5.2]
#   def change
#     create_table :items do |t|
#     	t.integer :user_id
#     	t.string :name
#     	t.text :description
#     	t.decimal :price, :precision => 8, :scale => 2
#     	t.string :category # top,bottom,footwear,accessories
#     end
#     add_index :items, :user_id
#     add_index :items, :category
#   end
# end

user = User.create(username: 'bencaneba', password: 'password', first_name: 'Ben', last_name: 'Caneba', email: 'bcaneba@gmail.com', phone: '9062314010')

item1 = user.items.build(
	name: 'All Saints Leather Jacket',
	description: 'This is a leather jacket I am selling from All Saints. It runs a bit small',
	price: 20.00,
	category: 'top',
	size: 'M',
	brand: 'All Saints'
)
item1.save

item2 = user.items.build(
	name: 'All Saints Jeans 34 X 32',
	description: 'These are some Jeans from All Saints.',
	price: 20.00,
	category: 'bottom',
	size: '34',
	brand: 'All Saints'
)
item2.save




















