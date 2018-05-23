class MiClase
    attr_accessor :name
    def initialize(name)
        @name = name
    end

    def self.saludar(nombre)
        "Hola! Soy la clase #{nombre}"
    end
end

c = MiClase.new('Clase Uno')
puts c.name
c.name = 'Nombre Nuevo'
puts MiClase.saludar(c.class.name)
