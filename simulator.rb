class Simulator

  def instructions(direction_path)
    case direction_path
    when 'L'
      [:turn_left]
    when 'R'
      [:turn_right]
    when 'A'
    [:advance]
    end
  end
end


