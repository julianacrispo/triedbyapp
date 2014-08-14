require 'faker'

50.times do
  Category.create(
    name: "CategoryName"
    )
end

puts "seed finished"
puts "#{Category.count} categories created"