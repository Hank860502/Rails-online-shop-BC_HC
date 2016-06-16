require 'rails_helper'

RSpec.describe ProductsController, type: :controller do
  let!(:product) { create :product }
  describe "#index" do
    it "renders the product index page" do
      get :index
      expect(response).to have_rendered('products/index')
    end
  end

  describe "#show" do
    it "renders the detailed product page" do
      get :show, id: product.id
      response.should render_template :show
    end
  end
end
