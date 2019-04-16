require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

puts "Exercise 8"
puts "----------"

# Your code goes here ...
@store1.employees.create!(first_name: "Testy", last_name: "McTestTest", hourly_rate: 199)

testy = Employee.find_by_first_name("Testy")
puts "Testy's password is #{testy.password} :O"