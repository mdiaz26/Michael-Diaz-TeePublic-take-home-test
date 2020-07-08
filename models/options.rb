class Options
    def initialize(attributes)
        @size = attributes.size
        @style = attributes.style || null
        @gender = attributes.gender
        @color = attributes.color
        @type = attributes.type
    end
end