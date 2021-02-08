require "oystercard"

describe Oystercard do

  it { is_expected.to respond_to(:balance) } 

  describe '#initialize' do
    it "sets an initial balance of 0" do
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
    it "sets a maximum limit on the card" do
      max_limit = Oystercard::MAX_LIMIT
      subject.top_up(max_limit)
      expect{ subject.top_up(1) }.to raise_error "Balance cannot exceed #{max_limit}"
    end
  end

  describe '#deduct' do
    it "deducts a fare from card" do
      subject.top_up(20)
      expect(subject.deduct(10)).to eq 10
    end
  end


end