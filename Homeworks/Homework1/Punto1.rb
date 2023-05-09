#What is the difference between chomp and chop?

#Código con chomp
nombre = "hola!"
puts nombre.chomp

#Código con chomp
nombre = "hola!"
puts nombre.chop

=begin
  Chomp and chop are both methods used to remove characters from the end of a string,
  but they work slightly differently.

  Chomp removes a specified record separator from the end of a string, or the default record
  separator (\n) if no separator is provided.

  Chop on the other hand, removes the last character from a string, regardless of what that
  character is.

  It's important to note that both chomp and chop modify the original string, so if you want
  to keep the original string intact, you should make a copy of it before using either of these methods.
end
