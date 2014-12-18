
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
  attr_accessor :color 
  attr_reader :current_speed, :model, :year 
  @@number_of_vehicles = 0

  ## Instance Methods

  def initialize(year, color, model)
    @@number_of_vehicles += 1

    @year = year
    @color = color
    @model = model
    @current_speed = 0
  end

  def gas_mileage(liters, miles)
    (1.0 * miles) / liters
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

  def to_s(class_name)
    "#{class_name} with model: #{@model}, color: #{@color}, year: #{@year}. Currently is going at #{@current_speed} mph"
  end

  ## Class Methods

  def self.number_of_vehicles
    puts @@number_of_vehicles
  end

end


class MyCar < Vehicle

  TYPE = :car

  def to_s
    super('MyCar')
  end

end

class MyTruck < Vehicle
  include Trailable

  TYPE = :truck

  def to_s
    super('MyTruck')
  end

end


car = MyCar.new(2014, :red, :sport)
truck = MyTruck.new(2013, :blue, :super_big)

puts '-- Number of Vehicles --'
Vehicle.number_of_vehicles

puts '-- Car --'
puts car.to_s

puts '-- Truck --'
puts truck.to_s

puts '-- More 50 mph of Speed --'
car.add_speed(50)
truck.add_speed(50)
puts car.to_s
puts truck.to_s

puts '-- Break until 30 mph of Speed --'
car.brake(20)
truck.brake(20)
puts car.to_s
puts truck.to_s

puts '-- Shut Off --'
car.shut_off
truck.shut_off
puts car.to_s
puts truck.to_s

puts '-- Change color to green --'
car.spray_paint(:green)
truck.spray_paint(:green)
puts car.to_s
puts truck.to_s

puts '-- Gas mileage of 100 Liters to 50 Miles --'
puts 'Car: ' + car.gas_mileage(100, 50).to_s
puts 'Truck: ' + truck.gas_mileage(100, 50).to_s



