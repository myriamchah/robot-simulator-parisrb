class Robot
attr_reader :bearing

  def orient(direction)
    possible_directions = [:west, :east, :north, :south]
    raise ArgumentError, "Not a possible direction, please use #{possible_directions}" unless possible_directions.include? direction
    @bearing = direction
  end

  def turn_right
    case bearing
    when :north
      orient(:east)
    when :east
      orient(:south)
    when :south
      orient(:west)
    when :west
      orient(:north)
    end
  end

  def turn_left
    case bearing
    when :north
      orient(:west)
    when :east
      orient(:north)
    when :south
      orient(:east)
    when :west
      orient(:south)
    end
  end
end
