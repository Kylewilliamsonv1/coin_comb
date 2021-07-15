#!/usr/bin/ruby
require ('./lib/coin_comb.rb')

x = 0
until (x == 3)
  x = x + 1
  puts "Give us some cents, and we'll give you the least amount of coins to get there"
  amount = gets.chomp
  amount = amount.to_i
  coins = Coin.new(amount)
  coins.big_brush
  puts "Here is your change: #{coins.quarter} quarters, #{coins.dime} dimes, #{coins.nickel} nickels, #{coins.penny} pennies."
end
