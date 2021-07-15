require ('pry')


class Coin
  attr_reader(:quarter, :dime, :nickel, :penny)

  def initialize(amount)
    @amount = amount
  end

  def big_brush
    self.quarter_comb.dime_comb.nickel_comb.penny_comb
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

# x = 0
# array = []
# until (x >= 10 )
#   x = x + 1
#   array.push(x)
# end
# array
# => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# 3 quarters, 1 dime, 1 nickel