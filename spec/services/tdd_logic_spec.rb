require 'rails_helper'
require 'tdd_logic' 


RSpec.describe TddLogic do
  describe '#add' do
     it 'returns only 0 for an empty string' do
       result = TddLogic.add("")
       expect(result).to eq(0)
       puts "returns only 0 for an empty string"
     end

     it 'returns one for a string' do
       result = TddLogic.add("1")
       expect(result).to eq(1)
       puts "returns 1 for an empty string"
     end

     it 'returns summation for an string' do
       result = TddLogic.add("0,4")
       expect(result).to eq(4)
     end

      it 'will return 7 for an string' do
       result = TddLogic.add("1,1,5")
       expect(result).to eq(7)
     end

      it 'will returns 8 for an string' do
       result = TddLogic.add("1,2,2,3")
       expect(result).to eq(8)
      end

       it 'will return error for negative numbers in string' do
        result = TddLogic.add("1,-2,3,-5,-6")
        expect(result).to eq("negative numbers are not allowed -2, -5, -6")
     end

   end
end