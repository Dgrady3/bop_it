module Key
  def button_down(id)
    if id == Gosu::KbP
      @commands.shift
      @pull_it = Pullit.new(self, 0, 100)
      @commands << @pull_it
    elsif id == Gosu::KbS
      @commands.shift
      @spin_it = Spinit.new(self, 0, 100)
      @commands << @spin_it
    elsif id == Gosu::KbB
      @commands.shift
      @bop_it = Bopit.new(self, 0, 100)
      @commands << @bop_it
    end
  end
end
