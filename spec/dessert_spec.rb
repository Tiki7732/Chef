require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  subject(:dessert) {Dessert.new("cookies", 12, "chef")}

  describe "#initialize" do
    
      it "sets a type" do
        expect(dessert.type).to eq("cookies")
      end
      

    it "sets a quantity" do
      expect(dessert.quantity).to eq(12)
    end

    it "starts ingredients as an empty array" do
      expect(dessert.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do
      expect {dessert.quantity}.to raise_error(ArgumentError) unless dessert.quantity.is_a?(Integer)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
       dessert.add_ingredient("eggs")
      expect(dessert.ingredients).to include("eggs")
     
    end
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
