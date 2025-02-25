require 'rails_helper'

RSpec.describe "Api::V1::Posts", type: :request do
  describe "GET /index" do
    it "returns http success" do
      post = FactoryBot.create(:post)
      get "/api/v1/posts/index", as: :json
      expect(response).to be_successful
    end
  end
end
