require './game'
require './player'
require './question'
require 'byebug'


game = Game.new

puts "Welcome to your Math Test"

game.run
# note, should report the winning score at the end

puts "Thanks for playing!"