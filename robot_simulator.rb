class Robot
attr_reader :bearing

  def orient(direction)
    possible_directions = [:west, :east, :north, :south]
    raise ArgumentError, "Not a possible direction, please use #{possible_directions}" unless possible_directions.include? direction
    @bearing = direction
  end
end
