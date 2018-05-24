# class Herviboro
#   @@definir = 'Sólo me alimento de vegetales!'
#
#   def self.definir
#     @@definir
#   end
#
#   def dieta
#     "Soy un Herviboro!"
#   end
# end

module Herviboro
  D = 'Sólo me alimento de vegetales!'
  def dieta
    "Soy un Herviboro!"
  end
end

class Animal
  def saludar
    "Soy un animal!"
  end
end

class Conejo < Animal
  include Herviboro
  def initialize(name)
    @name = name
  end
end

conejo = Conejo.new('Bugs Bunny')
puts conejo.saludar
puts conejo.dieta
puts Herviboro::D

#Pregunta: ¿Por qué es mejor solución la implementación de Mixin que mediante Herencia de Herencia?
#porque podrian chocar o sobreescribirse metodos que se hereeda, y con mixins se puede incorporar solo las secciones de codigo qe neecsito
