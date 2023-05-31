#based on user input, calculate the area of a trapezium:

print "Ingrese su nombre: "
nombre = gets.chomp
print "Ingrese la longitud de la base mayor del trapecio: "
bmay = gets.chomp.to_f
print "Ingrese la longitud de la base menor del trapecio: "
bmen = gets.chomp.to_f
print "Ingrese la altura del trapecio: "
h = gets.chomp.to_f

resultado = ((bmay + bmen) * h) / 2

puts "Señor(a) #{nombre}, el área del trapecio es: #{resultado}"
