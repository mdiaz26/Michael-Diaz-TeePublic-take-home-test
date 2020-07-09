require 'rspec/autorun'
require_relative "../models/shirt.rb"

describe Shirt do
    
    before do
        @shirt = Shirt.new({id: 3, product_type: "tshirt", options: {size: "large", gender: "female", color: "green"}})
    end
    
    it "creates a Shirt instance" do
        expect(@shirt).to be_a Shirt
    end

    it "creates an object with a readable size attribute" do
        expect(@shirt.size).to eq("large")
    end
    it "creates an object with a readable gender attribute" do
        expect(@shirt.gender).to eq("female")
    end

    it "creates an object with a readable color attribute" do
        expect(@shirt.color).to eq("green")
    end

end