require 'rspec/autorun'
require_relative "../models/mug.rb"

describe Mug do
    it "creates a Mug instance" do
        @mug = Mug.new({id: 1, product_type: "mug", options: {type: "coffee mug"}})
        expect(@mug).to be_a Mug
    end
end