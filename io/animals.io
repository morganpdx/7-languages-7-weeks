#!/usr/bin/iotop

Object ancestors := method(
	prototype := self proto
	if(prototype != Object,
		writeln("Slots of ", prototype type, "/n--------------")
		prototype slotNames foreach(mySlot, writeln(mySlot))
	writeln
	prototype ancestors))

Animal := Object clone
Animal speak := method("an ambiguous animal noise" println)

Duck := Animal clone
Duck speak := method("quack" println)
Duck walk := method("waddle" println)

disco := Duck clone
disco ancestors