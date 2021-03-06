require 'spec_helper'

module ArrayToAverage
  describe Calculate, type: :lib do
    let(:numbers) { [7,8,5] }
    let(:average) { 20.0 / numbers.size }

    describe '.average' do
      it 'when numbers is not empty' do
        calculated = ArrayToAverage::Calculate.new(numbers).average
        expect(calculated).to eq average
      end

      it 'when numbers is empty' do
        calculated = ArrayToAverage::Calculate.new([]).average
        expect(calculated).to eq 0.0
      end

      it 'when numbers is array' do
        calculated = ArrayToAverage::Calculate.new(100).average
        expect(calculated).to eq 0.0
      end
    end
  end
end