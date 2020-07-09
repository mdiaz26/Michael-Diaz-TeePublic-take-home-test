require 'rspec/autorun'
require_relative "../models/sticker.rb"

describe Sticker do
    
    before do
        @sticker = Sticker.new({id: 2, product_type: "sticker", options: {size: "small", style: "matte"}})
    end

    it "creates a Sticker instance" do
        expect(@sticker).to be_a Sticker
    end

    it "creates an object with a readable size attribute" do
        expect(@sticker.size).to eq("small")
    end

    it "creates an object with a readable style attribute" do
        expect(@sticker.style).to eq("matte")
    end



end