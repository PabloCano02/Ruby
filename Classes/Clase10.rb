#Introdution to unit testing

#La automatización de pruebas es usar herramientas de software para controlar y gestionar:
#La ejecución de pruebas
#La comparación de resultados obtenidos vs resultados esperados de la prueba
#la definición de precondiciones y postcondiciones en las pruebas
#reporte de resultados

#La automatización de pruebas tiene sus ventajas:
#Reducir costos del QA (Quality Assurance -> Aseguramiento de calidad)
#Reducir la propensión de errores humanos en las pruebas
#Reducir la diferencia en la calidad de las pruebas entre diferentes individuos
#Reducir los costos de pruebas de regresión

#La automatización de pruebas busca automatizar los test cases

#Test case -> Es un artefacto que contiene tipicamente lo siguiente:
#Valores de entrada del caso de prueba
#Resultados esperados
#Valores prefijados
#Valores posfijos (Valores de verificación y valores de salida)

#Frameworks de automatización de pruebas -> conjunto de conceptos y de herramientas que dan soporte a la
#automatización de pruebas en una plataforma o en un lenguaje de programación específico. ¿Qué soportan los
#frameworks de automatización de pruebas?
#Asersiones -> Instrucciones especiales que permiten comparar la salida obtenida vs la salida esperada
#Compartir datos comunes entre pruebas
#Definición de datos de prueba
#Diferentes maneras de poner a ejecutar dichas automatizaciones (CLI o UI)
#Algunos frameworks son: unit.net (.net), JUnit (Java), PHPUnit (PHP), cucumber, Mocha Chai Jest (js), cypress
#Test::Unit (Ruby), Selenium -> pruebas unitarias por interfaz de usuario web

#test driver -> Mecanismo que organiza las pruebas, las corre y les da manejo a la salida

#¿Qué tantas pruebas se deben realizar?, ¿Qué tanto se deben automatizar y cuales?
#Las pruebas que más se deben hacer, son las pruebas unitarias porque se pueden realizar rápidamente, no son
#tan costosas y por lo general se pueden automatizar
#En un segundo nivel vienen las pruebas de servicio o pruebas de integración y son en las que entran en juego
#dos o más componentes del sistema que estamos probando, son numerosas, pero no son tantas
#Finalmente, las pruebas E2E o pruebas UI, son dificiles de automatizar o de entrada no se pueden automatizar
#La recomendación es que de estas se hagan pocas

#Test::Unit -> es el framework de automatización de pruebas para Ruby
#Se puede setear, organizar y correr pruebas utilizando esta herramienta
#No nos apegamos a un solo framework de pruebas, sino de varios
#Test::Unit trabaja con asersiones
#Hay diferentes formas de determinar que es la unidad en una prueba unitaria
#Toda aplicación se compone de ladrillos, el ladrillo más pequeño al que se le puede hacer pruebas en
#aislamiento de los otros ladrillos esa es la unidad

require "test/unit"
require_relative "Clase10-1.rb"

class TestCalculator < Test::Unit::TestCase

  def setup
    @calc = Calculator.new
  end

  def test_add
    assert_equal(1, @calc.add(1, 0))
    assert_equal(0, @calc.add(0, 0))
    assert_equal(5, @calc.add(2, 3))
  end

  def test_nan
    assert_raise(TypeError){@calc.multiply("Hola", "mundo")}
  end

  def test_multiply
    assert_equal(0, @calc.multiply(1, 0))
    assert_equal(0, @calc.multiply(0, 0))
    assert_equal(6, @calc.multiply(2, 3))
    assert_equal(5, @calc.multiply(5, 1))
  end
end
