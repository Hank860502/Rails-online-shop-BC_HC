require 'rails_helper'

RSpec.feature "Products", type: :feature, :js => true do
  let!(:product) { create :product}

  describe "#index" do
    it "returns list of all the products" do
      visit products_path
      expect(page).to have_content(product.name)
    end
  end

  describe "#create product" do
    it "fills in text in the new product form and redirects to detailed product page" do
      visit new_admin_product_path
      fill_in "Name", :with => "Lipstick"
      fill_in "Price", :with => 6.99
      click_button "Create Product"
      expect(page).to have_content("Lipstick")
    end
  end

  describe "product page" do
    before(:each) do
      visit admin_products_path
    end
    # it "has a link that deletes the product" do
    #     click_link 'Delete'
    #   expect(page).to_not have_content(product.name)
    # end

    it "has a link that edits the product" do
        click_link 'Edit'
      fill_in "Name", :with => "Highlighter"
      click_button "Update Product"
      expect(page).to_not have_content("Lipstick")
      expect(page).to have_content("Highlighter")
    end
  end
end
