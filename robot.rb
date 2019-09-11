class Robot
  attr_reader :bearing, :coordinates

  def initialize(_coordinates = [])
    @coordinates = _coordinates
  end

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

  def at(x, y)
    @coordinates = [x, y]
  end

  def advance
    x = coordinates[0]
    y = coordinates[1]
    case bearing
    when :north
      at(x, y + 1)
    when :east
      at(x + 1, y)
    when :south
      at(x, y - 1)
    when :west
      at(x - 1, y)
    end
  end
end
