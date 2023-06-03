#Write a program that prints the factorial of a given number.

print "Ingrese el número del cual desee conocer el factorial: "
n = gets.chomp.to_i

#Utilizando un ciclo while
i = 1
acum = 1
while i <= n
  acum *= i
  i += 1
end
puts "El factorial de #{n} es: #{acum}"

#Utilizando un ciclo until
i = 1
acum = 1
until i == (n + 1)
  acum *= i
  i += 1
end
puts "El factorial de #{n} es: #{acum}"

#Utilizando un ciclo for
acum = 1
for i in 1 .. n
  acum *= i
  i += 1
end
puts "El factorial de #{n} es: #{acum}"
