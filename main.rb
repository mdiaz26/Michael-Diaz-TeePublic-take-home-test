require_relative "models/product.rb"
# require_relative "models/options.rb"
require_relative "models/shirt.rb"
require_relative "models/mug.rb"
require_relative "parser"

puts "Welcome to Mike's product parser."
puts "Please wait while we organize our data"
inventory = Parser.json_to_objects(File.read("products.json"))

puts "You may input a product type as well as 0 or more product options."
puts "You will then receive a list of available items that fit the submitted criteria."

input = ""


while input != "q" && input != "Q" do
    puts "There are #{Mug.all.length} mugs."
    puts "There are #{Shirt.all.length} tshirts."
    puts "There are #{Sticker.all.length} stickers."
    puts "Press q to quit."
    input = gets.chomp
end

puts "Goodbye!"