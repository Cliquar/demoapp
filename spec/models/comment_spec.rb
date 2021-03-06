require 'rails_helper'

describe Comment do 
  before do
    @product = Product.create!(name: "race bike")
    @user = User.create!(email: "tes4t@test.com", password: "123456")
  end

  it "is valid with a body, user, product and rating" do
    comment = Comment.create(
      body: "Commenttext",
      user_id: @user.id,
      product_id: @product.id,
      rating: 5)
    expect(comment).to be_valid
  end
end