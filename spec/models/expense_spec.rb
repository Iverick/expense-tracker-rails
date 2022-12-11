require 'rails_helper'

RSpec.describe Expense, type: :model do
  describe 'Associations' do
    it { should belong_to(:list) }
    it { should belong_to(:category) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:amount) }
    it { should validate_presence_of(:cost) }
  end
end