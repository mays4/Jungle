require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
 # test 
    it 'should contain category name' do
        @category = Category.new(name: 'Furniture')
        # @category.save!
        # @product = Product.new(name:'table',price: 17,quantity: 12,category: @category)
        # @product.save!
        # expect(@product.name).to be_present
        expect(@category).to be_valid

        # expect(@product).to be_valid
    end
    it 'should not be valide if name is nil' do
      # @category = Category.new(name: 'Furniture')
      # @category.validate? 
      @product = Product.new
      @product.name = nil
      @product.valid?
      # @product = Product.new(name: nil,price:200,quantity:12,category:@category)
      # @product.validate? 
       expect(@product.errors[:name]).to include("can't be blank")
      # expect(@product).to_not be_valid
      expect(@product.errors[:name]).to include("can't be blank")
    end 
    it 'should not be valid if price is nil' do
      @product = Product.new
      @product.price_cents = nil

      
      @product.valid?
      #  @product = Product.new(name: "desk",price:,quantity:12,category:@category)
      #  @product.valid? 
       expect(@product.errors[:price_cents]).to include("is not a number")
    end
    it 'should not be  valid if quantity is nil' do
      # @category = Category.new(name: "furniture")
      # @category.save!
      # @product = Product.new(name: "desk",price:15 ,quantity:nil,category:@category)
      # @product.save!
      # expect(@product.errors.full_messages[:quantity]).to include("can't be blank")
      @product = Product.new
      @product.quantity = nil
      @product.valid?
      expect(@product.errors[:quantity]).to include("can't be blank")
    end
    it 'should not be  valid if category is nil ' do
      # @category = Category.new(name: "furniture")
      # @category.save!
      # @product = Product.new(name: "desk",price:15 ,quantity:nil,category:@category)
      # @product.save!
      # expect(@product.errors.full_messages[:category]).to include("can't be blank")
      @product = Product.new
      @product.category = nil
      @product.valid?
      expect(@product.errors[:category]).to include("can't be blank")
    end
  end
end
