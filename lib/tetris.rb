require 'tetris/version'
require 'matrix'

module Tetris

  require 'tetris/block'
  require 'tetris/command'
  require 'tetris/direction'
  require 'tetris/game'
  require 'tetris/input'
  require 'tetris/output'
  require 'tetris/rotation'
  require 'tetris/shape'

  output = Output.new(100,20)
  input = Input.new(output.window)
  game = Game.new(input, output, )
  game.run

end

