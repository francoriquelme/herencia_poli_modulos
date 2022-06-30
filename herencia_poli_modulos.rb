# Ejercicio 1
class Person
    def initialize(first, last, age)
      @first_name = first
      @last_name = last
      @age = age
    end
    def birthay
      @age += 1
    end
  end
  
  class Student < Person
    def talk
      puts "Aquí es la clase de programación con Ruby?"
    end
    def introduce
      puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
    end
  end
  
  class Teacher < Person
    def talk
      puts "Bienvenidos a la clase de programación con Ruby!"
    end
    def introduce
      puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
    end
  end
  
  class Parent < Person
    def talk
      puts "Aquí es la reunión de apoderados?"
    end
    def introduce
      puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
    end
  end
  
  puts "Instanciando y probando métodos"
  puts '---------------------------------------'
  estudiante = Student.new('Franco ', 'Riquelme', 20)
  estudiante.talk
  estudiante.introduce
  puts
  profesor = Teacher.new('Claudia', 'Blanco', 30 )
  profesor.talk
  profesor.introduce
  puts
  padre = Parent.new('Vasco', 'Riquelme', 65)
  padre.talk
  padre.introduce
  
  
  # Ejercicio 2
  
  module Habilidades
    module Volador
      def volar
        'Estoy volandooooo!'
      end
      def aterrizar
        'Estoy cansado de volar, voy a aterrizar'
      end
    end
  
    module Nadador
      def nadar
        'Estoy nadando!'
      end
      def sumergir
        'glu glub glub glu'
      end
    end
  
    module Caminante
      def caminar
        'Puedo caminar!'
      end
    end
  end
  
  module Alimentacion
    module Herbivoro
      def comer
        'Puedo comer plantas!'
      end
    end
  
    module Carnivoro
      def comer
        'Puedo comer carne!'
      end
    end
  end
  
  
  
  class Animal
    attr_reader :nombre
    def initialize(nombre)
      @nombre = nombre
    end
  end
  
  class Ave < Animal
    include Habilidades
    include Alimentacion
  end
  
  class Mamifero < Animal
    include Habilidades
    include Alimentacion
  end
  
  class Insecto < Animal
    include Habilidades
    include Alimentacion
  end
  
  class Pinguino < Ave
    include Habilidades::Caminante
    include Habilidades:: Nadador
    include Alimentacion::Carnivoro
  end
  class Paloma < Ave
    include Habilidades::Volador
    include Alimentacion::Herbivoro
  
  end
  
  class Pato < Ave
    include Habilidades::Nadador
    include Alimentacion::Carnivoro
  
  end
  
  class Perro < Mamifero
    include Habilidades::Caminante
    include Alimentacion::Carnivoro
  end
  
  class Gato < Mamifero
    include Habilidades::Caminante
    include Alimentacion::Carnivoro
  end
  
  class Vaca < Mamifero
    include Habilidades::Caminante
    include Alimentacion::Herbivoro
  
  end
  
  class Mosca < Insecto
    include Habilidades::Volador
    include Alimentacion::Herbivoro
  end
  
  class Mariposa < Insecto
    include Habilidades::Volador
    include Alimentacion::Herbivoro
  end
  
  class Abeja < Insecto
    include Habilidades::Volador
    include Alimentacion::Herbivoro
  end
  
  # Para testear el funcionamiento, tomamos unas subclases y probamos sus métodos
  puts Paloma.new("nombre Paloma").volar
  puts Abeja.new("bee").comer
  puts Vaca.new("Mmmmmm").caminar
  puts Pinguino.new("Pinguino en el agua").nadar
  puts Pinguino.new("Pinguino en la nieve").caminar