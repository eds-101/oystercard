require "oystercard"

describe Oystercard do

  it { is_expected.to respond_to(:balance) } 

  describe '#initialize' do
    it "sets an initial balance of 0 " do
      oyster = Oystercard.new
      expect(oyster.balance).to eq 0
    end
  end

  describe '#top_up' do
    it { is_expected.to respond_to(:top_up) }
    it "allows user to add money to card" do
      oyster = Oystercard.new
      expect(oyster.top_up(5)).to eq 5
    end
  end
end