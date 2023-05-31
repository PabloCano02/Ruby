#Which are the different variables’ scopes and what are them used for?

=begin
   there are four variable scopes: local, instance, class, and global.

    -Local variables are declared inside a method and are only available within that method.
    They are useful for storing temporary data that is only needed within a function.
    The name begin with [a-z] or _

    -Instance variables are declared inside a class and are available to all instances of that class.
    They are used to store data that is specific to each instance of the class.
    The name begin with @

    -Class variables are declared inside a class and are available to all instances of that class.
    They are used to store data that is shared by all instances of the class.
    The name begin with @@

    -Global variables are declared outside of any class or method and are available throughout the program.
    The name begin with $

    -Constants are values that do not change during program execution.
    The name begin with [A-Z] and written in all caps.
end
