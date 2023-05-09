#based on user input, calculate the area of a rectangle:

print "Ingrese su nombre: "
nombre = gets.chomp
print "Ingrese el largo del rectángulo: "
l = gets.chomp.to_f
print "Ingrese el ancho del rectángulo: "
a = gets.chomp.to_f

resultado = l * a

puts "Señor(a) #{nombre}, el área del rectángulo es: #{resultado}"
