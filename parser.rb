require 'json'

require_relative "models/product.rb"
require_relative "models/shirt.rb"
require_relative "models/mug.rb"
require_relative "models/sticker.rb"

class Parser

    def self.json_to_objects(json)
        parsed_data = JSON.parse(json)
        parsed_data.map { |product_info|
            case product_info["product_type"]
            when "tshirt"
                Shirt.new({id: product_info["id"], product_type: "tshirt", options: {size: product_info["options"]["size"], gender: product_info["options"]["gender"], color: product_info["options"]["color"]}})
            when "mug"
                Mug.new({id: product_info["id"], product_type: "mug", options: {type: product_info["options"]["type"]}})
            when "sticker"
                Sticker.new({id: product_info["id,"], product_type: "sticker", options: {size: product_info["options"]["size"], style: product_info["options"]["style"]}})
            else
                puts "a new class is needed"
            end
        }
    end

    def self.return_options(input)
        parsed_input = input.split(' ')
        case parsed_input[0]
        when "tshirt"
            
        when "mug"
            
        when "sticker"
            self.print_sticker_options(parsed_input)
        else
            puts "invalid input, please try again"
        end
    end

    def self.print_sticker_options(input)
        case input.length
        when 1
            puts "Size: #{Sticker.sizes.join(", ")}"
            puts "Style: #{Sticker.styles.join(", ")}"
        when 2
            Sticker.print_options(input)
        else
            return null
        end
    end

end