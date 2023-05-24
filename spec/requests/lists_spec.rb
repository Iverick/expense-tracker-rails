require 'rails_helper'

RSpec.describe "/lists", type: :request do
  let(:user) { create(:user) }
  let(:valid_attributes) do 
    {
      'id' => '1',
      'name' => 'Test'
    }
  end

  let(:invalid_attributes) do 
    {
      'id' => 'a',
      'name' => ''
    }
  end

  describe "guest user" do
    it "redirected when trying GET /lists" do
      get lists_path
      expect(response).to have_http_status(:redirect)
    end
  end

  describe "authenticated user" do
    before { sign_in user }

    it "can access GET /lists" do
      get lists_path
      expect(response).to have_http_status(:success)
    end

    it "POST /lists creates a new List with valid parameters" do
      expect do
        post lists_path, params: { list: valid_attributes }
      end.to change{ List.count }.by(1)
    end

    it "POST /lists does not create a new List with invalid parameters" do
      expect do
        post lists_path, params: { list: invalid_attributes }
      end.to_not change{ List.count }
    end

    it "DELETE /lists/:id removes the requested List and redirects to the Lists list" do
      list = create(:list)
      
      expect { delete list_path(list) }.to change{ List.count }.by(-1)
      expect(response).to redirect_to(lists_url)
    end
  end
end
