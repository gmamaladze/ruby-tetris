class Board

  def initialize(width, height)
    @stack = Array.new(height, Array.new(width, Cell.new))
    (0..width-1).each(@stack.pu)
  end

  def [](i,j)

  end

end