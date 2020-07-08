require_relative "models/product.rb"
require_relative "models/options.rb"
require_relative "models/shirt.rb"
require_relative "models/mug.rb"

puts "Welcome to the parser."
puts "You may input a product type as well as 0 or more product options."
puts "You will then receive a list of available items that fit the submitted criteria."

input = ""

shirt = Shirt.new({id: 1, product_type: "shirt", options: {size: "small", gender: "female", color: "blue"}})
mug = Mug.new({id: 2, product_type: "mug", options: {type: "coffee mug"}})

while input != "q" && input != "Q" do
    puts "Here's our shirt: #{shirt.product_type} #{shirt.color} #{shirt.size} #{shirt.gender}"
    puts Product.all
    puts Mug.all
    puts "Press q to quit."
    input = gets.chomp
end

puts "Goodbye!"