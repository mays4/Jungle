require 'rails_helper'

RSpec.describe User, type: :model do
  it 'should not be valide if name is nil' do
   
    @product = Product.new
    @product.name = nil
    @product.valid?
    # @product = Product.new(name: nil,price:200,quantity:12,category:@category)
    # @product.validate? 
     expect(@product.errors[:name]).to include("can't be blank")
    # expect(@product).to_not be_valid
    expect(@product.errors[:name]).to include("can't be blank")
  end 
end
