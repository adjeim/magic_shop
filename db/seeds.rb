# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
	User.create(
		fname: Faker::Name.first_name,
		lname: Faker::Name.last_name,
		username: Faker::Superhero.descriptor,
		email: Faker::Internet.email,
		password: "password"
	)
end

(1..10).each do |num|
	Order.create(
		user_id: num
	)
end


5.times do

	Product.create(
		name: "#{Faker::Superhero.unique.power} Potion",
		price: Faker::Number.decimal(2, 2),
		description: "A #{Faker::Color.color_name} potion. Use with caution."

	)

	Product.create(
		name: "Enchanted #{Faker::Food.unique.ingredient}",
		price: Faker::Number.decimal(2, 2),
		description: "A magical ingredient harvested sustainably from the planet #{Faker::Space.planet}."

	)

end