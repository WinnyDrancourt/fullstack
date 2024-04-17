require_relative '../lib/03_word_counter'

describe "The word counter method" do 
    it "Should count the number of word" do
    dictionnary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
        expect(word_counter("below", dictionnary)).to eq("below" => 1, "low" => 1)
        expect(word_counter("Howdy partner, sit down! How's it going?", dictionnary)).to eq("down"=>1, "how"=>2, "howdy"=>1,"go"=>1, "going"=>1, "it"=>2, "i"=> 3, "own"=>1,"part"=>1,"partner"=>1,"sit"=>1)
    end
    it "Should count the number in Shakespear" do 
    dictionnary = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]
end