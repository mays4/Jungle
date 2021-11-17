class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV['ADMIN_NAME'], password: ENV['ADMIN_PASSWORD']
  # shows Product and category quantity
  def show
    @quantity = Product.count
    @category_qty = Category.count
  end
end
