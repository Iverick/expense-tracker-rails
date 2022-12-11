require 'rails_helper'

RSpec.describe List, type: :model do
  describe 'validations' do
    current_user  = User.create(id: 1, email: 'esco@example.com', password: '123456ab', password_confirmation: '123456ab')

    it 'has a name' do
      list = List.new(
        name: '',
        user: current_user
      )
      expect(list).to_not be_valid

      list.name = 'Has a name'
      expect(list).to be_valid
    end

    it { should belong_to(:user).without_validating_presence }
  end
end