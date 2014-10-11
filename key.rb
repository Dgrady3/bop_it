module Key
  def button_down(id)
    case id
    when Gosu::KbEscape
      close
    end

  end
