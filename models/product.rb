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

    def self.print_options(user_input)
        styles = []
            self.all.map{|object| 
                if object.size == user_input[1] && !styles.include?(object.style)
                    styles << object.style
                end
            }

            puts "Style: #{styles.join(", ")}"
    end

end