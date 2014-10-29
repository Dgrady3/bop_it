require 'gosu'
require 'pry'

require_relative 'bopit'
require_relative 'pullit'
require_relative 'spinit'
require_relative 'key'


class GameWindow < Gosu::Window
  include Key
  attr_accessor :bop_it
  def initialize
    super(640,480, false)
    self.caption="bopit"
    @commands = []
    @background_image = Gosu::Image.new(self, "img/bopit.png", true)
    @bop_it = Bopit.new(self, 0, 100)
    @commands << @bop_it
  end

  def update #60 times per second #contain moves, and collisions
    @bop_it.update if @bop_it
    @pull_it.update if @pull_it
    @spin_it.update if @spin_it
  end

  def draw #no logic
    @background_image.draw(160,140,0)
    @commands.each do |command|
      command.draw
    end
  end
end

window = GameWindow.new
window.show
