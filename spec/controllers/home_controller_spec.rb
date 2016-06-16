require 'rails_helper'

RSpec.describe HomeController, type: :controller do

  describe "GET #index" do
    it "redirects to product overview" do
      get :index
      expect(response).to redirect_to(products_path)
    end
  end

end
