#based on user input, calculate the area of a circle:

print "Ingrese su nombre: "
nombre = gets.chomp
print "Ingrese el radio del circulo: "
r = gets.chomp.to_f

resultado = Math::PI * (r ** 2)

puts "Señor(a) #{nombre}, el área del circulo es: #{resultado}"
