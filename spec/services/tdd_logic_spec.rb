require 'rails_helper'
require 'tdd_logic' 


RSpec.describe TddLogic do
  describe '#add' do
     it 'returns only 0 for an empty string' do
       result = TddLogic.add("")
       expect(result).to eq(0)
       puts "returns only 0 for an empty string"
     end

   end
end