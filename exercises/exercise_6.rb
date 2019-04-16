require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create!(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create!(first_name: "Raf", last_name: "DaVinci", hourly_rate: 45)
@store1.employees.create!(first_name: "Alliyah", last_name: "Pop", hourly_rate: 70)
@store1.employees.create!(first_name: "Grindel", last_name: "Broume", hourly_rate: 41)

@store2.employees.create!(first_name: "Paul", last_name: "Peters", hourly_rate: 100)
@store2.employees.create!(first_name: "Anne", last_name: "Em", hourly_rate: 45)
@store2.employees.create!(first_name: "Ratson", last_name: "Thorwaldson", hourly_rate: 70)
@store2.employees.create!(first_name: "Jodi", last_name: "Criggle", hourly_rate: 53)
@store2.employees.create!(first_name: "Tim", last_name: "Guys", hourly_rate: 200)
