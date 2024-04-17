require_relative '../lib/02_jmtrade'

describe "day_trader method" do
  it "should return the best day to buy and sell to make profit" do
    expect(day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1, 4])
    expect(day_trader([17, 13, 11, 10, 8, 4, 3, 2, 0])).to eq("no possible profit")
    expect(day_trader([17, 3, 0.4, 9, 15, 8, 66, 1, 10])).to eq([2, 6])
    expect(day_trader([])).to eq("no possible profit")
    expect(day_trader([4])).to eq("no possible profit")
  end
end


[17,0][3,1]

[17,0][3,1][6,2][9, 3]