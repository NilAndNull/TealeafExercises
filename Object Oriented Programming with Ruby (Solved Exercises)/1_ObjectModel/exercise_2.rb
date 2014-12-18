

# A module is a collection of behaviors that is useable in other classes via mixins. It also works as a namespace.
# To use them we use 'include' in a class.

module TrainedDog

  def sit
    puts 'The Dog sits.'
  end

end

class Dog
  include TrainedDog

  def bark
    puts 'Auff!!'
  end

end


sparky = Dog.new
sparky.bark
sparky.sit




