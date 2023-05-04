Dog.destroy_all
Sitter.destroy_all
Stroll.destroy_all
City.destroy_all


5.times do |index|
  dog = Dog.order("RANDOM()").first
  sitter = Sitter.order("RANDOM()").first
  city = City.create(city_name: Faker::Address.city)
end


25.times do |index|
  city = City.order("RANDOM()").first
  dog = Dog.create(name: Faker::Creature::Dog.unique.name, city_id: city.id)
end 


10.times do |index|
  city = City.order("RANDOM()").first
  sitter = Sitter.create(name: Faker::Name.unique.name, city_id: city.id)
end

50.times do |index|
  dog = Dog.order("RANDOM()").first
  sitter = Sitter.order("RANDOM()").first
  stroll = Stroll.create(dog: dog, sitter: sitter)
end