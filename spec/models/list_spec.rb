require 'rails_helper'

RSpec.describe List, type: :model do
  it { should belong_to(:user).without_validating_presence }
  
  describe 'Username field validation' do
    let(:list) { create(:list) }

    it 'invalid when does not have a name' do
      list.name = ''
      expect(list).to_not be_valid
    end

    it 'valid when has a name' do
      expect(list).to be_valid
    end
  end
end
