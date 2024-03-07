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

   end
end