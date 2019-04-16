require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
# Store.create!(name: "Oshawa", annual_revenue: 224000, mens_apparel: false, womens_apparel: false) 
puts "==============Please enter a store name==============f"

user_store = $stdin.gets.chomp

store = Store.create(name: user_store)

binding.pry
store.errors.full_messages.each do |e|
    puts e
end


