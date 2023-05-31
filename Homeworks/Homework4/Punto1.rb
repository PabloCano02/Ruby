#What are break and next instructions used for, and within which statements?

=begin
  la sentencia "break" se utiliza dentro de ciclos, como for, while o until, o dentro de una sentencia case.
  Su propósito es terminar inmediatamente la ejecución del ciclo más interno o la sentencia case y
  continuar ejecutando el código después del ciclo o la sentencia case. Por ejemplo:
=end

for i in 1..10
  break if i == 5
  puts i
end

=begin
  En este código, el ciclo itera desde 1 hasta 10. Sin embargo, cuando el ciclo alcanza el valor de
  i == 5, se encuentra con la sentencia "break", lo que hace que el ciclo termine. Como resultado,
  solo se imprimirán los números 1, 2, 3 y 4.
=end

=begin
la sentencia "next" se utiliza dentro de ciclos, como for, while o until, para saltar el resto de la iteración
actual y pasar a la siguiente iteración. Por ejemplo:
=end

for i in 1..10
  next if i == 5
  puts i
end

=begin
En este código, el ciclo itera desde 1 hasta 10. Cuando el ciclo se encuentra el valor de i == 5, se ejecuta
la sentencia "next", lo que hace que el ciclo pase inmediatamente a la siguiente iteración. Por lo tanto,
solo se imprimirán los números 1, 2, 3, 4, 6, 7, 8, 9, 10.
=end
