require ('pry')


class Coin
  attr_reader(:quarter, :dime, :nickel, :penny)

  def initialize(amount)
    @amount = amount
  end

  def big_brush
    quarter_comb
    dime_comb
    nickel_comb
    penny_comb
  end

  def quarter_comb
    @quarter = @amount / 25
    @amount = @amount % 25
  end

  def dime_comb
    @dime = @amount / 10
    @amount = @amount % 10
  end

  def nickel_comb
    @nickel = @amount / 5
    @amount = @amount % 5
  end
  
  def penny_comb
    @penny = @amount / 1
    @amount = @amount % 1
  end
end
