require ('rspec')
require ('coin_comb')

describe('#coins_combs') do
  it("tells you how many quarters are in a 100 cents") do
    coins = Coin.new(100)
    coins.quarter_comb()
    expect(coins.quarter).to(eq(4))
  end
  it("tells you how many dimes are in a 100 cents") do
    coins =Coin.new(100)
    coins.dime_comb()
    expect(coins.dime).to(eq(10))
  end
  it("tells you how many dimes are in a 90 cents after subtracting the quarters") do
    coins =Coin.new(90)
    coins.quarter_comb
    coins.dime_comb
    expect(coins.dime).to(eq(1))
  end
  it("tells you how many nickels are in 100 cents") do
    coins =Coin.new(100)
    coins.nickel_comb
    expect(coins.nickel).to(eq(20))
  end
  it("tells you how many nickels are in a 90 cents after subtracting the quarters and dimes") do
    coins =Coin.new(90)
    coins.quarter_comb
    coins.dime_comb
    coins.nickel_comb
    expect(coins.nickel).to(eq(1))
  end
  it("tells you how many pennies are in 100 cents") do
    coins =Coin.new(100)
    coins.penny_comb
    expect(coins.penny).to(eq(100))
  end
  it("tells you how many pennies are in a 94 cents after subtracting the quarters, dimes, and nickels") do
    coins =Coin.new(94)
    coins.quarter_comb
    coins.dime_comb
    coins.nickel_comb
    coins.penny_comb
    expect(coins.penny).to(eq(4))
  end
end