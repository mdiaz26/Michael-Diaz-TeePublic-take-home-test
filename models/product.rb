class Product
    attr_reader :id
    attr_reader :product_type

    @@all = []

    def initialize(product_info)
        @id = product_info[:id]
        @product_type = product_info[:product_type]

        @@all << self
    end

    def self.all
        @@all
    end

end