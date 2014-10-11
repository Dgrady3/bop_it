class Pullit
  def initialize(game_window, x, y)
    @game_window = game_window
    @x = 0
    @y = rand(@game_window.height)
    @pull = Gosu::Image.new(@game_window, "img/pull.png", true)
  end

  def draw
   @pull.draw(@x, @y, 1)
  end

  def update
    @x += 1
  end
end
