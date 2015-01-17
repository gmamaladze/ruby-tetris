class Game

  def initialize(input, output)
    @input = input
    @output = output
    #  size = Point.new(width, height)

    # @output = Output.new(size)
    # @input = Input.new(@output.window)

    #    @universe = Universe.new(size)
    #    @snake = Snake.new(@universe, @output, @input)
    #    @universe.add(@snake)
    #    mouse = Mouse.new(@universe, @output)
    #    @universe.add(mouse)
  end


  def run
    loop do

      shape = Shape.new
      block = Block.new(shape)
      command = @input.command
      case command
        when Command::SHIFT_LEFT
          block.shift_left
        when Command::SHIFT_RIGHT
          block.shift_right
        when Command::FALL
          block.fall
        when Command::EXIT
          break
      end
    end
    @output.close
  end
end
