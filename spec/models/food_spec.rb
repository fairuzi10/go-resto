require 'rails_helper'

RSpec.describe Food, type: :model do
  context 'when name is nil' do
    before do
      @food = Food.create(description: 'desc', price: 50)
    end
    it 'should not be valid' do
      expect(@food).to_not be_valid
    end
  end

  context 'when description is nil' do
    before do
      @food = Food.create(name: 'name', price: 50)
    end
    it 'should not be valid' do
      expect(@food).to_not be_valid
    end
  end

  context 'when price is nil' do
    before do
      @food = Food.create(name: 'name', description: 'desc')
    end
    it 'should not be valid' do
      expect(@food).to_not be_valid
    end
  end

  context 'if price is not number' do
    before do
      @food = Food.create(name: 'name', description: 'desc', price: 'yuhu')
    end
    it 'should not be valid' do
      expect(@food).to_not be_valid
    end
  end
end
