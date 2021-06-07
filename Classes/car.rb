class Car 

  # attr_reader :value this would let accesible the value for anyone, but protected
  def initialize(age, miles)
    base_value = 20000
    age_deduction = age * 1000
    miles_deduction = ( miles / 10.to_f )
    @value = base_value - age_deduction - miles_deduction
  end

  def compare_car_with(car)
    self.value > car.value ? 'Your Car is better!' : 'My car is better'
  end

  protected # juest lets other objects of the saame class to see it
  def value
    @value
  end
end


c1 = Car.new(20, 100000)
c2 = Car.new(1, 10)

p c1.compare_car_with(c2)
p c1.value