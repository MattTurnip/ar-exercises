require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
Store.create!(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Store.create!(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Store.create!(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: false)

@mens_stores = Store.where({mens_apparel: true, womens_apparel: false})

@mens_stores.each do |store|
  puts "name of men's store: #{store.name}"
  puts "annual revenue that store: #{store.annual_revenue}"
end

#not performant but it works
# @broke_unisex_stores = Store.where({womens_apparel: true}).having('annual_revenue < 1000000').group('id')

@broke_unisex_stores = Store.where(["womens_apparel = ? AND annual_revenue < ?", true, 1000000])

binding.pry