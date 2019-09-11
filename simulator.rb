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

  def evaluate(robot, path)
    instructions(path).each do |dir|
      robot.send(dir)
    end
  end

  def place(robot, x: , y: , direction: )
    robot.at(x,y)
    robot.orient(direction)
  end
end



 # simulator.place(robot, x: -2, y: 1, direction: :east)
 #    simulator.evaluate(robot, 'RLAALAL')
 #    assert_equal [0, 2], robot.coordinates
 #    assert_equal :west, robot.bearing
