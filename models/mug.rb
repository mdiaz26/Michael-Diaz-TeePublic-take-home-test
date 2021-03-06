require_relative "product"

class Mug < Product
    
    @@all_mugs = []
    
    def initialize(product_info)
        super
        @options = {
            type: product_info[:options][:type]
        }

        @@all_mugs << self
    end

    def type
        @options[:type]
    end

    def self.all
        @@all_mugs
    end

end