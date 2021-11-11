class Admin::DashboardController < ApplicationController
  def show
    @quantity = Product.count
    @category_qty = Category.count
  end
end
