require_relative 'block'
require_relative 'command'
require_relative 'direction'
require_relative 'game'
require_relative 'input'
require_relative 'output'
require_relative 'rotation'
require_relative 'shape'

output = Output.new(22,12)
input = Input.new(output.window)
game = Game.new(input, output, )
game.run