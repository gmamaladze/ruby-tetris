require 'curses'

class Output

  INVISIBLE_CURSOR = 0

  attr_reader :window

  def initialize(height, width)
    Curses.init_screen
    Curses.cbreak
    Curses.noecho
    Curses.curs_set(INVISIBLE_CURSOR)

    @window = Curses::Window.new(height, width, 0, 0)
    @window.box(?|, ?-)
    @window.keypad(true)
    @window.timeout = 150
  end

  def close
    @window.close
    Curses.close_screen
  end

  def repaint

  end

end