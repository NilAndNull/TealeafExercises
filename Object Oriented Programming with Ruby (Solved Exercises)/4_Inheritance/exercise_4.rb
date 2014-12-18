
module Trailable
  @has_trailer = false

  def attach_trailer
    @has_trailer = true
  end

  def detach_trailer
    @has_trailer = false
  end

  def has_trailer?
    return @has_trailer
  end

end


class Vehicle
  @@number_of_vehicles = 0  

  def initialize
    @@number_of_vehicles += 1
  end

  def gas_mileage(liters, miles)
    miles / liters
  end

  def self.number_of_vehicles
    puts @@number_of_vehicles
  end

end


class MyCar < Vehicle

  TYPE = :car

  attr_accessor :color 
  attr_reader :current_speed, :model, :year

  def initialize(year, color, model)
    super()

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

  def spray_paint(color)
    @color = color
  end

  def to_s
    puts "MyCar with model: #{@model}, color: #{@color}, year: #{@year}. Currently is going at #{@current_speed} mph"
  end

end

class MyTruck < Vehicle
  include Trailable

  TYPE = :truck

  def initialize
    super
  end

end

puts '-- Module Trailable --'
puts Trailable.ancestors
puts '-- Class Vehicle --'
puts Vehicle.ancestors
puts '-- Class Car --'
puts MyCar.ancestors
puts '-- Class Truck --'
puts MyTruck.ancestors






