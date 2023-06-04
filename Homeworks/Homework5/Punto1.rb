#Write a function that receives a integer number as a parameter and writes in the screen if its an even
#or an odd number

print "Por favor ingrese un número entero: "
num = gets.chomp.to_i

def is_even (num)
  if num % 2 == 0
    puts "El número #{num} es par"
  else
    puts "El número #{num} es impar"
  end
end

is_even(num)
