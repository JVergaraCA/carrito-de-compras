# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all
Category.destroy_all

3.times do |i|
	a=Category.create(name: "categoria #{i}")
	a.products.build(name: "producto #{i}", cost: i).save
	Product.create!(name: "super product #{i}", category_id:a.id, cost: i*2)

end

	Product.last.delete
	a=Product.last
	a.premium=true
	a.save

Category.all.each do |c|
	may=c.name.capitalize
	c.name=may
	c.save
end