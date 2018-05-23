class Vehicle
  def initialize(model, year)
    @model = model
    @year = year
    @start = false
  end

  def engine_start
    @start = true
  end
end

class Car < Vehicle
  @@contador = 0
  def initialize
      @@contador += 1
  end

  def self.contador
      @@contador
  end

  def engine_start
    super
    puts "El motor se ha encendido!"
  end

end


auto1 = Car.new
auto2 = Car.new

puts auto2.engine_start

10.times { Car.new }

puts "Hay " + Car.contador.to_s + " instancias de Car"
