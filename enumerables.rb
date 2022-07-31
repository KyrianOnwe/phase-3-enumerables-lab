require 'pry'

# this method returns an array of hashes, which we'll use in the other methods
def spicy_foods 
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end

# given an array of spicy foods, **return an array of strings**
# with the names of each spicy food
def get_names(spicy_foods)
  # your code here
  my_list = spicy_foods.map{|sf| sf[:name]}
  p my_list
end

# given an array of spicy foods, **return an array of hashes** 
# where the heat level of the food is greater than 5
def spiciest_foods(spicy_foods)
  # your code here
  my_list = spicy_foods.filter{|sf| sf[:heat_level] > 5}
  p my_list  
end


# given an array of spicy foods, **output to the terminal**
# each spicy food in the following format: 
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: you can use * with a string to produce the correct number of 🌶 emoji. 
# "hello" * 3 == "hellohellohello"
def print_spicy_foods(spicy_foods)
  # your code here
  my_statement = spicy_foods.each{|sf| puts sf[:name] + " (" + sf[:cuisine] + ") | Heat Level: " + "🌶" * sf[:heat_level]}
  my_statement  
end


# given an array of spicy foods and a string representing a cuisine, **return a single hash**  
# for the spicy food whose cuisine matches the cuisine being passed to the method
def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  # your code here
  my_food = spicy_foods.find{|sf| sf[:cuisine] == cuisine}
  p my_food
end


# Given an array of spicy foods, **return an array of hashes** 
# sorted by heat level from lowest to highest
def sort_by_heat(spicy_foods)
  # your code here
  my_list = spicy_foods.sort_by{|sf| sf[:heat_level]}
  p my_list
end


# given an array of spicy foods, output to the terminal ONLY 
# the spicy foods that have a heat level greater than 5, in the following format: 
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: Try to use methods you've already written to solve this!
def print_spiciest_foods(spicy_foods)
  # your code here
  my_foods = spicy_foods.filter{|sf| sf[:heat_level] > 5}
  print_foods = my_foods.each{|mf| puts "#{mf[:name]} (#{mf[:cuisine]}) | Heat Level: " + "🌶" * mf[:heat_level]}
  print_foods
end


# given an array of spicy foods, return an integer representing 
# the average heat level of all the spicy foods in the array
def average_heat_level(spicy_foods)
  # your code here
  nums = spicy_foods.map{|sp| sp[:heat_level]}
  red = nums.inject{|sum, n| sum + n}
  avg = red/spicy_foods.length
  avg
end
# binding.pry
