class Oystercard
  attr_reader :balance
  MAX_LIMIT = 90

  def initialize(balance = 0)
    @balance = balance
  end
  
  def top_up(amount)
    raise "Balance cannot exceed #{MAX_LIMIT}" if @balance + amount > MAX_LIMIT

    @balance += amount
  end

  def deduct(amount)
    @balance -= amount
  end


end