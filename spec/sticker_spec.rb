require 'rspec/autorun'
require_relative "../models/sticker.rb"

describe Sticker do
    it "creates a Sticker instance" do
        @sticker = Sticker.new({id: 2, product_type: "sticker", options: {size: "small", style: "matte"}})
        expect(@sticker).to be_a Sticker
    end
end