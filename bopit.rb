class Bopit
  attr_accessor :bop, :x, :y
  def initialize(game_window, x, y)
    @game_window = game_window
    @x = x
    @y = rand(@game_window.height)
    @bop = Gosu::Image.new(@game_window, "img/bop.png", true)
  end

  def draw
   @bop.draw(@x, @y, 1)
  end

  def update
    @x += 1
  end
end

