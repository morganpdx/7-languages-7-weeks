#!/usr/bin/iotop

vizzini := Object clone
vizzini talk := method(
				"Fezzik, are there rocks ahead?" println
				yield
				"No more rhymes now, I mean it!" println
				yield)

fezzik := Object clone
fezzik rhyme := method(
				yield
				"If there are, we'll all be dead!" println
				yield
				"Anybody want a peanut?" println)

vizzini @@talk; fezzik @@rhyme




slower := Object clone
slower start := method(wait(2); writeln("Slowly..."))

faster := Object clone
faster start := method(wait(1); writeln("Quickly!"))

slower @@start; faster @@start; wait(3)


Coroutine currentCoroutine pause