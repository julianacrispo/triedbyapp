require 'faker'
5.times do
  user = User.new(
    name: Faker::Name.name, 
    email: Faker::Internet.email, 
    password: Faker::Lorem.characters(10)
  )
  user.skip_confirmation!
  user.save
end
users = User.all

50.times do
  category = Category.create(
    name: "CategoryName"
  )
end
categories = Category.all

50.times do
  product = Product.create(
    category: categories.sample,
    name: Faker::Lorem.characters(10), 
  )
end
products = Product.all

  50.times do
    review = Review.create(
      user: users.sample, 
      use: Faker::Lorem.sentence, 
      comment: Faker::Lorem.paragraph
    )
    review.update_attribute(:created_at, rand(10.minutes .. 1.year).ago)
  end

puts "seed finished"
puts "#{Category.count} categories created"