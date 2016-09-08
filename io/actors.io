#! #!/usr/bin/iotop

slower := Object clone
slower start := method(wait(2); writeln("Slowly..."))

faster := Object clone
faster start := method(wait(1); writeln("Quickly!"))

slower @@start; faster @@start; wait(3)