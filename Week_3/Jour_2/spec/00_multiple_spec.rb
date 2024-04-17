require_relative '../lib/00_multiple'

describe "the is_multiple_of_3_or_5 method" do 
    it "should return TRUE when an integer is a multiple of 3 or 5" do
        expect(is_multiple_of_3_or_5?(3)).to eq(true)
        expect(is_multiple_of_3_or_5?(5)).to eq(true)
        expect(is_multiple_of_3_or_5?(51)).to eq(true)
        expect(is_multiple_of_3_or_5?(45)).to eq(true)
    end

    it "should return FALSE when an integer is NOT a multiple of 3 or 5" do
        expect(is_multiple_of_3_or_5?(8)).to eq(false)
        expect(is_multiple_of_3_or_5?(49)).to eq(false)
        expect(is_multiple_of_3_or_5?(98)).to eq(false)
        expect(is_multiple_of_3_or_5?(203)).to eq(false)
    end

    it "should sum_of_3_or_5_multiples" do
        expect(sum_of_3_or_5_multiples?(11)).to eq(33)
        expect(sum_of_3_or_5_multiples?(0)).to eq(0)
        expect(sum_of_3_or_5_multiples?(10)).to eq(23)
    end

    it "should NOT sum_of_3_or_5_multiples" do
        expect(sum_of_3_or_5_multiples?(-5)).to eq(0)
    end   
end
        