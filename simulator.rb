class Simulator

  def instructions(direction_path)
    direction_path.chars.map do |direction|
      case direction
      when 'L'
        :turn_left
      when 'R'
        :turn_right
      when 'A'
        :advance
      end
    end
  end
end

