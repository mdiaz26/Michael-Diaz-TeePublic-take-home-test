require 'rspec/autorun'
require_relative "../models/shirt.rb"

describe Shirt do
    it "creates a Shirt instance" do
        @shirt = Shirt.new({id: 3, product_type: "shirt", options: {size: "s", gender: "female", color: "green"}})
        expect(@shirt).to be_a Shirt
    end
end