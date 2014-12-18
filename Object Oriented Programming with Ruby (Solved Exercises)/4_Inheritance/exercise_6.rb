
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

  def age
    calculate_age
  end

  ## Class Methods

  def self.number_of_vehicles
    puts @@number_of_vehicles
  end

  private

    def calculate_age
      Time.now.year - @year
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


car = MyCar.new(1953, :red, :sport)

puts '-- Car Age --'
puts car
puts car.age.to_s + ' years old.'



