require 'rails_helper'

RSpec.feature "Visitor can see  from the home page to the product detail page by clicking on a product", type: :feature, js: true do

  # SETUP
  before :each do
    @category = Category.create! name: 'Apparel'

      @category.products.create!(
      name:  Faker::Hipster.sentence(3),
      description: Faker::Hipster.paragraph(4),
      image: open_asset('apparel1.jpg'),
      quantity: 10,
      price: 64.99
     )
   
  end

  scenario "They see all products" do
    
    # ACT
    visit root_path

    # DEBUG
    save_screenshot

    # VERIFY
    find('a.btn-default').click
  
    expect(page).to have_content('Description')
    
  end
end