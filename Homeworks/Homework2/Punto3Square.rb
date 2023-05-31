#based on user input, calculate the area of a square:

print "Ingrese su nombre: "
nombre = gets.chomp
print "Ingrese el lado del cuadrado: "
l = gets.chomp.to_f

resultado = (l ** 2)

puts "Señor(a) #{nombre}, el área del cuadrado es: #{resultado}"
