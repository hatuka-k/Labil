require 'rails_helper'

RSpec.describe Location, type: :model do
  describe '#name' do
    context '空白の時' do
      it 'nameがvalidでないこと' do
        @location = Location.new(
        :name => '',
        :category => '')
        @location.valid?
        expect(@location.errors[:name]).to be_present
      end
       it 'categoryがvalidでないこと' do
        @location = Location.new(
        :name => 'あ',
        :category => '')
        @location.valid?
        expect(@location.errors[:category]).to be_present
      end
    end
  end
end
