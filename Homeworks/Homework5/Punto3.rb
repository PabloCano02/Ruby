#Write a function that returns the factorial of a given number, using recursion.

puts "Ingrese por favor el número del cual desea obtener el factorial"
num = gets.chomp.to_i

def factorial (num)
  if num == 0 || num == 1
    return 1
  else
    return num * factorial(num-1)
  end
end

puts "El factorial del número #{num} es: #{factorial(num)}"
