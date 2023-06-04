#Write a function that returns the factorial of a given number, using iteration.

puts "Ingrese por favor el número del cual desea obtener el factorial"
num = gets.chomp.to_i

def factorial (num)
  i = 1
  acum = 1
  while i <= num
    acum *= i
    i += 1
  end
  return acum
end

puts "El factorial del número #{num} es: #{factorial(num)}"
