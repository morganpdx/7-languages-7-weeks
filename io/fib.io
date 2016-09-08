#!/usr/bin/iotop

fibonacci := Object clone
fibonacci index := 0
fibonacci fibList := list(1, 1)

fibonacci getIndexFromInput := method(
	"Enter the index of the Fibonacci sequence element to find:" println
	self index = File standardInput readLine asNumber
)

fibonacci appendOne := method(
	x := self fibList at(self fibList size - 1)
	y := self fibList at(self fibList size - 2)
	
	self fibList append(x + y) 
)

fibonacci inflateList := method(
	for(i, 2, self index, 1, self appendOne)
)

fibonacci getElement := method(
	("The element at index #{self index} is:" interpolate) println
	self fibList at(self fibList size - 1) println
)


fibonacci getIndexFromInput 
fibonacci inflateList
fibonacci getElement