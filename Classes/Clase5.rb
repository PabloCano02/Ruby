#Operadores, declaraión de condicionales y ciclos

#Operadores
#Son caracteres especiales que permiten evaluar una expresión

#Operadores aritméticos: +, -, *, /, %, **
#Tener cuidado con la división /, porque se ejecuta para int y para float

#Operadores de comparación: ==, !=, <, >, <=, >=, <=>, ===, .eql?, equal?
#== Averiguar si son iguales
#!= Para averiguar si son diferentes
#<=> Operador de comparación combinado

#Operadores de asignación: =, +=, -=, *=, /=, %=, **=

#Asignación paralela: Asignar valores a diferentes variables en menos líneas de código
#a, b, c, d = 1, 2, 3, 4

#Operadores lógicos: and &&, or ||, not !

#Operador ternario: Es una sentencia if-else de una sola linea (?:)
#Si condicion es verdadero ? entonces valor x : sino valor y

#Operadores de rango
#.. 1..10 Crea el rango de numeros enteros entre 1 y 10 (incluye los valores de los extremos)
#... 1...10 Crea el rango de numeros enteros entre 1 y 9 (no incluye el último valor)

#Declaración de condicionales

#if-else

#if condicional [then]
# code...
#[elsif condicional [then]
# code...]...
#[else
# code...]
#end

edad = 2
if edad >= 18
  puts "Usted es mayor de edad"
elsif edad >= 5
  puts "Usted es menor de edad"
else
  puts "Usted es de primera infancia"
end

#if and unless modifiers (unless -> a menos que)
#code if condition
#code unless condition

puts "hola" if 25 > 22 #Se ejecuta si la comparación es verdadera
puts "hola" unless 25 < 22 #Se ejecuta si la comparación es falsa

#Instrucción case-when
#Se puede hacer por rangos
edad = 5
case edad
when 0 .. 2
  puts "bebé"
when 3 .. 6
  puts "niño pequeño"
when 7 .. 12
  puts "niño"
when 13 .. 18
  puts "joven"
else
  puts "adulto"
end

#Se puede hacer por valores puntuales
patos = 0
case patos
when patos = 0
  puts "no tienes patos"
when patos = 1
  puts "tienes un pato"
when patos = 2
  puts "tienes dos patos"
when patos = 3
  puts "tienes tres patos"
when patos = 4
  puts "tienes cuatro patos"
else
  puts "tiene más de cuatro patos"
end

#Ciclos

#Ciclo while

#While condition [do]
# code
#end

i = 0
while i < 10
  puts i
  i += 1
end

#Ciclo until

#until condition [do]
#  code
#end

i = 0
until i == 10
  puts i
  i += 1
end

#Ciclo for
#Iterar sobre rango y colecciones, esa es su utilidad en ruby

#for object in expresion [do]
# code
#end

for i in 0 .. 9
  puts i
end

sobrinos = ["Hugo", "Paco", "Luis"]
for sobrino in sobrinos
  puts "Sobrino: " + sobrino
end
