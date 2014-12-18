
class MyCar
  attr_accessor :year, :color, :model
  attr_reader :current_speed

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
  end

  def add_speed(speed_to_add)
    @current_speed += speed_to_add
  end

  def brake(speed_to_remove)
    @current_speed -= speed_to_remove
    @current_speed = 0 if @current_speed < 0
  end

  def shut_off
    @current_speed = 0
  end

end


