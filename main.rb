require_relative "models/product.rb"
require_relative "models/shirt.rb"
require_relative "models/mug.rb"
require_relative "parser"

puts "Welcome to Mike's product parser."
inventory = Parser.json_to_objects(File.read("products.json"))

input = ""

while input != "q" && input != "Q" do
    
    puts "Please enter a product type and 0 or more product options. Each input must be separated by a space."
    puts "Or press q to quit."
    input = gets.chomp

    puts Parser.return_options(input)
end

puts "Goodbye!"