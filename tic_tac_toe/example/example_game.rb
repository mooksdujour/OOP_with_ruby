root = File.expand_path("../", File.dirname(__FILE__))
require "#{root}/lib/tic_tac_toe.rb"
 
puts "Welcome to tic tac toe"
jack = TicTacToe::Player.new({mark: "X", name: "Jack"})
jill = TicTacToe::Player.new({mark: "O", name: "Jill"})
players = [jack, jill]
TicTacToe::Game.new(players).play