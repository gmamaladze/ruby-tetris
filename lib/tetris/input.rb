require 'curses'

class Input

  ESCAPE_KEY = 27
  COMMAND_MAP = {
      Curses::KEY_DOWN => Command::FALL,
      Curses::KEY_UP => Command::ROTATE,
      Curses::KEY_LEFT => Command::SHIFT_LEFT,
      Curses::KEY_RIGHT => Command::SHIFT_RIGHT,
      ESCAPE_KEY => Command::EXIT}

  def initialize(window)
    @window = window
  end

  def command
    key = @window.getch
    COMMAND_MAP[key] || Command::NONE
  end

end