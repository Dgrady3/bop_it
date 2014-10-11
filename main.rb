require 'gosu'
require 'pry'

require_relative 'bopit'
require_relative 'pullit'
require_relative 'spinit'

class GameWindow < Gosu::Window
  attr_accessor :bop_it
  def initialize
    super(640,480, false)
    self.caption="bopit"
    @commands = []
    @background_image = Gosu::Image.new(self, "img/bopit.png", true)
    @bop_it = Bopit.new(self, 0, 100)
    @pull_it = Pullit.new(self, 0, 100)
    @spin_it = Spinit.new(self, 0, 100)
  end

  def update #60 times per second #contain moves, and collisions
    @bop_it.update
     if button_down? Gosu::Button::KbB
     @commands << @pull_it
     end
     # @pull_it.update
     # if button_down? Gosu::Button::KbC
     #  @commands << @spin_it
     # end
     # @spin_it.update
  end

  def draw #no logic
     @background_image.draw(160,140,0)
     @bop_it.draw
     @commands.each do |command|
      command.draw
    end
  end
end


window = GameWindow.new
window.show
