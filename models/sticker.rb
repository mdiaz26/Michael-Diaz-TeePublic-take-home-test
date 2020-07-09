require_relative "product"

class Sticker < Product
    
    @@all_stickers = []
    
    def initialize(product_info)
        super
        @options = {
            size: product_info[:options][:size],
            style: product_info[:options][:style]
        }

        @@all_stickers << self
    end

    def size
        @options[:size]
    end

    def style
        @options[:style]
    end

    def self.all
        @@all_stickers
    end

end