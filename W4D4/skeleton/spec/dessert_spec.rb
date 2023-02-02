require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
    # subject(:brownie) {Dessert.new("brownie")}
  let(:chef) { double("chef") }
  let(:brownie) {Dessert.new("brownie", 10, chef)}

  describe "#initialize" do
    it "sets a type"
    expect(brownie.type).to eq("brownie")

    it "sets a quantity"
    expect(brownie.quantity).to eq(10)

    it "starts ingredients as an empty array"
    expect(brownie.ingredients).to be empty
    it "raises an argument error when given a non-integer quantity"
    expect {Dessert.new("brownie", "cake", check)}.to raise_error(ArgumentError)
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array"
    expect(brownie.ingredients).to be empty
    brownie.add_ingredient("chocolate")
    expect(brownie.ingredients).to include("chocolate")
  end

  describe "#mix!" do
    it "shuffles the ingredient array"
  end

  describe "#eat" do
    it "subtracts an amount from the quantity"

    it "raises an error if the amount is greater than the quantity"
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end
