require 'rails_helper'

RSpec.describe "Products", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/products"
      expect(response).to have_http_status(:success)
    end

    it "returns a list of products" do
      FactoryBot.create(:product)
      FactoryBot.create(:product)
      get "/products"
      expect(response.body).to include("My Product")
      expect(response.body).to include("My Product")
    end
  end

  describe "GET /show" do
    it "returns http success" do
      product = FactoryBot.create(:product)
      get "/products/#{product.id}"
      expect(response).to have_http_status(:success)
    end
  end
end
