require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
 # test 
    it 'should contain category name' do
        @category = Category.new(name: 'Furniture')
        @category.save!
        @product = Product.new(name:'table',price: 17,quantity: 12,category: @category)
        @product.save!
         # expect prodcut to present
        expect(@product).to be_present
        # expect category to present 
        expect(@category).to be_present
        
    end
    it 'should not be valide if name is nil' do

      @product = Product.new
      @product.name = nil
      @product.valid?
      expect(@product.errors[:name]).to include("can't be blank")
    end 

    it 'should not be valid if price is nil' do

      @product = Product.new
      @product.price_cents = nil
      @product.valid? 
       expect(@product.errors[:price_cents]).to include("is not a number")
    end

    it 'should not be  valid if quantity is nil' do
     
      @product = Product.new
      @product.quantity = nil
      @product.valid?
      expect(@product.errors[:quantity]).to include("can't be blank")

    end

    it 'should not be  valid if category is nil ' do
     
      @product = Product.new
      @product.category = nil
      @product.valid?
      expect(@product.errors[:category]).to include("can't be blank")
    end
  end
end
