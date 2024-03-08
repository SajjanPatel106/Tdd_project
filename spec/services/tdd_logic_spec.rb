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

      it 'will return 20 for an \n string' do
       result = TddLogic.add('2\n4,6\n8')
       expect(result).to eq(20)
      end

      it 'will return invalid for an empty string' do
       result = TddLogic.add('1,\n')
       expect(result).to eq('invalid')
      end

      it 'returns summation of number for string' do
       result = TddLogic.add('//;\n1;2;4')
       expect(result).to eq(7)
      end

      it 'returns summation of and not include number >1000' do
       result = TddLogic.add('2,1001')
       expect(result).to eq(2)
      end

      it 'returns sumation for string includes *' do
       result = TddLogic.add('/[***]\n1***2***3')
       expect(result).to eq(6)
      end


   end
end