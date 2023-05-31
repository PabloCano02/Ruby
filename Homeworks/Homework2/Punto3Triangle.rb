#based on user input, calculate the area of a triangle:

print "Ingrese su nombre: "
nombre = gets.chomp
print "Ingrese la base del triángulo: "
b = gets.chomp.to_f
print "Ingrese la altura del triángulo: "
h = gets.chomp.to_f

resultado = (b * h) / 2

puts "Señor(a) #{nombre}, el área del triángulo es: #{resultado}"
