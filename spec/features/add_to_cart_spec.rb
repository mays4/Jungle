require 'rails_helper'

RSpec.feature "Visitor  can click the 'Add to Cart' button for a product on the home page and in doing so their cart increases by one", type: :feature, js: true do

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

    
    # VERIFY
    expect(page).to have_content('My Cart (0)')
    click_button("Add")
    expect(page).to have_content('My Cart (1)')
    # DEBUG
   
    save_screenshot
  end
end