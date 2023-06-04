#Write a function that returns true if a given number is prime, and false otherwise.

puts "Ingrese por favor el número del cual desea saber si es número primo"
num = gets.chomp.to_i

def is_prime (num)
  if num <= 1
    return false
  end

  i = 2
  while i * i <= num
    if num % i == 0
      return false
    end
    i += 1
  end

  return true
end

puts "¿El número #{num} es primo?: #{is_prime(num)}"
