require_relative "product"

class Sticker < Product
    
    @@all_stickers = []
    @@sticker_sizes = []
    @@sticker_styles = []
    
    def initialize(product_info)
        super
        @options = {
            size: product_info[:options][:size],
            style: product_info[:options][:style]
        }

        @@all_stickers << self
        if !@@sticker_sizes.include?(@options[:size])
            @@sticker_sizes << @options[:size]
        end
        if !@@sticker_styles.include?(@options[:style])
            @@sticker_styles << @options[:style]
        end
    end

    # def self.print_options(user_input)
    #     styles = []
    #         Sticker.all.map{|sticker| 
    #             if sticker.size == user_input[1] && !styles.include?(sticker.style)
    #                 styles << sticker.style
    #             end
    #         }

    #         puts "Style: #{styles.join(", ")}"
    # end

    def size
        @options[:size]
    end

    def style
        @options[:style]
    end

    def self.all
        @@all_stickers
    end

    def self.sizes
        @@sticker_sizes
    end

    def self.styles
        @@sticker_styles
    end

end