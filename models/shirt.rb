class Shirt < Product

    @@all_shirts = []

    def initialize(product_info)
        super
        @options = {
            size: product_info[:options][:size],
            gender: product_info[:options][:gender],
            color: product_info[:options][:color]
        }

        @@all_shirts << self
    end

    def size
        @options[:size]
    end

    def gender
        @options[:gender]
    end

    def color
        @options[:color]
    end

    def self.all
        @@all_shirts
    end

end