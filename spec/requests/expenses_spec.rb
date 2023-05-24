require 'rails_helper'

RSpec.describe "/lists/{list:id}/expenses", type: :request do
  let(:user) { create(:user) }
  let(:list) { create(:list) }
  let(:category) { create(:category) }

  let(:valid_attributes) do 
    {
      'id' => '1',
      'name' => 'Test',
      'amount' => '2',
      'cost' => '29.12',
      'category_id' => category.id
    }
  end

  let(:invalid_attributes) do 
    {
      'id' => '',
      'name' => 'Test',
      'amount' => '2',
      'cost' => '29.12',
      'category_id' => 0
    }
  end

  before { sign_in user }

  describe "authenticated user" do
    it "can access GET /lists/:list_id/expenses/new" do
      get new_list_expense_path(list)
      expect(response).to have_http_status(:success)
    end

    it "POST /expenses creates a new Expense with valid attributes" do
      expect do
        post list_expenses_path(list), params: { expense: valid_attributes }
      end.to change{ Expense.count }.by(1)
    end

    it "POST /expenses does not create a new Expense when invalid attributes provided" do
      expect do
        post list_expenses_path(list), params: { expense: invalid_attributes }
      end.to_not change{ Expense.count }
    end
  end
end