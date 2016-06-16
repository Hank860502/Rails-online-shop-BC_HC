require 'rails_helper'
require_relative '../../support/auth_helper'

RSpec.describe Admin::ProductsController, type: :controller do
  let!(:product) { create :product }
  include AuthHelper
  before(:each) do
    http_login
  end
  describe "Admin product routes" do
    describe "#new" do
      it "renders the new product page" do
        get :new
        expect(response).to have_rendered('admin/products/new')
      end
    end

    describe "#edit" do
      it "renders the edit product page" do
        get :edit, id: product.id
        response.should render_template :edit
      end
    end

    describe "#destroy" do
      it "redirects to the product index page" do
        get :destroy, id: product.id
        expect(response).to redirect_to('/admin/products')
      end
    end
  end
end
