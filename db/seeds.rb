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
	brand: 'All Saints',
	posted_at: Time.now.to_datetime,
	expires_at: (Time.now.to_datetime + 100)
)
item1.save

item2 = user.items.build(
	name: 'All Saints Jeans 34 X 32',
	description: 'These are some Jeans from All Saints.',
	price: 20.00,
	category: 'bottom',
	size: '34',
	brand: 'All Saints',
	posted_at: Time.now.to_datetime,
	expires_at: (Time.now.to_datetime + 100)
)
item2.save

item3 = user.items.build(
	name: 'Broke City Gold Denim Jacket',
	description: 'This is an awesome denim jacket bought in Japan!',
	price: 20.00,
	category: 'top',
	size: 'M',
	brand: 'Broke City Gold',
	posted_at: Time.now.to_datetime,
	expires_at: (Time.now.to_datetime + 100)
)
item3.save

item4 = user.items.build(
	name: 'Rag and Bone Jeans 34',
	description: 'These are some Jeans from Rag and Bone.',
	price: 20.00,
	category: 'bottom',
	size: '34',
	brand: 'Rag and Bone',
	posted_at: Time.now.to_datetime,
	expires_at: (Time.now.to_datetime + 100)
)
item4.save

item5 = user.items.build(
	name: 'Levis Denim Jacket',
	description: 'This is an awesome denim jacket bought in Portland!',
	price: 20.00,
	category: 'top',
	size: 'M',
	brand: 'Levis',
	posted_at: Time.now.to_datetime,
	expires_at: (Time.now.to_datetime + 100)
)
item5.save

40.times do
	item6 = user.items.build(
		name: 'Jordan 1 Size 9 Shattered Backboards',
		description: 'These are some Jordan 1s.',
		price: 20.00,
		category: 'shoes',
		size: '9',
		brand: 'Air Jordan',
		posted_at: Time.now.to_datetime,
		expires_at: (Time.now.to_datetime + 100)
	)
	item6.save

	comment = user.comments.build(item_id: item6.id, content: 'Nice Shoes!')
	comment.save
end

article1 = Article.create(title: 'article1', description: 'this is the description', published_at: Time.now.to_datetime, author: 'Ben Caneba')

article2 = Article.create(title: 'article2', description: 'this is the description', published_at: Time.now.to_datetime, author: 'Ben Caneba')

article3 = Article.create(title: 'article3', description: 'this is the description', published_at: Time.now.to_datetime, author: 'Ben Caneba')



















