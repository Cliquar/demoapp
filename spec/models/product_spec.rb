require 'rails_helper'

describe Product do
    
  before do
    @product = Product.create!(name: "race bike")
    @user = User.create!(email: "tes4t@test.com", password: "123456")
    @product.comments.create!(rating: 1, user: @user, body: "Awful bike!")
    @product.comments.create!(rating: 3, user: @user, body: "Meh bike!")
    @product.comments.create!(rating: 5, user: @user, body: "Nice bike!")
  end

  context "when the product has comments" do
    it "returns the average of all comments" do
      expect(@product.average_rating).to eq 3
    end


    it "is not valid" do
      expect(Product.new(description: "Blabla")).not_to be_valid
    end
  end
end