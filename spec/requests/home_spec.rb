require "rails_helper"

RSpec.describe "/", type: :request do
  describe "guest users can visit homepage /index" do
    it "succeeds" do
      get root_path
      expect(response).to have_http_status(:success)
    end
  end
end