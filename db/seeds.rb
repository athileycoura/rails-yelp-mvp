require 'faker'
puts 'Deleting all restaurants...'
Restaurant.destroy_all

category = ['chinese', 'italian', 'japanese', 'french', 'belgian']
puts 'Creating 10 fake restaurants...'

10.times do
  restaurant = Restaurant.new(
    name: Faker::Company.name,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    phone_number: Faker::PhoneNumber,
    category: category.sample
  )
  restaurant.save!
  puts "#{restaurant.name} got created"
end
puts 'Finished!'
