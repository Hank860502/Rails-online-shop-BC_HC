require 'rails_helper'

RSpec.describe Product, type: :model do
  let(:product) { build :product}

  describe "Product Model" do

    it { should validate_presence_of :name }
    it { should validate_presence_of :price }
    it { should validate_numericality_of :price }

    context "#save" do
      it "returns true if successfully saved to db" do
        expect { product.save }.to change(Product,:count).by(1)
      end
    end

    context "#destroy" do
      it "returns true if successfully deleted from db" do
        product.save
        expect { product.destroy }.to change(Product,:count).by(-1)
      end
    end
  end
end
