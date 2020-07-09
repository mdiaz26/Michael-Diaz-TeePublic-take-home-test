require 'rspec/autorun'
require_relative "../models/mug.rb"

describe Mug do

    before do
        @mug = Mug.new({id: 1, product_type: "mug", options: {type: "coffee-mug"}})
    end

    it "creates a Mug instance" do
        expect(@mug).to be_a Mug
    end

    it "creates an object with a readable type attribute" do
        expect(@mug.type).to eq("coffee-mug") 
    end
end