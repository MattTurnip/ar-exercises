require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
total_revenue = Store.sum(:annual_revenue)
average_revenue = (total_revenue / Store.count)
busy_stores = Store.where(["annual_revenue > ?", 1000000]).count

puts "total revenue of all clothing stores #{total_revenue}"
puts "the average revenue of the stores is #{average_revenue}"
puts "#{busy_stores} store(s) make more than 1,000,000 in annual revenue"

