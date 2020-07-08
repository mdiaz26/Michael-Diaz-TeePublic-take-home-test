puts "Welcome to the parser."
puts "You may input a product type as well as 0 or more product options."
puts "You will then receive a list of available items that fit the submitted criteria."

input = ""

while input != "q" && input != "Q" do
    puts "Press q to quit."
    input = gets.chomp
end

puts "Goodbye!"