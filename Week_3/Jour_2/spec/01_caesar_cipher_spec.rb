require_relative '../lib/01_caesar_cipher'

describe "the caesar_cipher method" do
    it "should modify one letter" do
        expect(one_letter("A", 5)).to eq("F")
        expect(one_letter("f", 3)).to eq("i")
        expect(one_letter("%")).to eq("&")
        expect(one_letter("y", 10)).to eq("i")
    end
    it "should modify more than one letter" do
        expect(more_than_one("lorem ipsum",4)).to eq ("psviq mtwyq")
        expect(more_than_one("Hello",4)).to eq ("Lipps")
        expect(more_than_one("petit ChaT",7)).to eq ("wlapa JohA")
    end
end