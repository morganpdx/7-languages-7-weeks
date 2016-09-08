#!/usr/bin/iotop

binarySearch := Object clone
binarySearch maxLimit := Number clone
binarySearch randNumber := Number clone
binarySearch counter := Number clone
binarySearch guess := Number clone

binarySearch getMax := method(
	"I'm going to pick a random number.  What is the upper limit?" println
	maxLimit = File standardInput readLine asNumber
	randNumber = Random value(maxLimit) floor
)

binarySearch guessNumber := method(
	counter = 1
	("Ok, now guess a number between 0 and #{maxLimit}" interpolate) println
	guess = File standardInput readLine asNumber
	while((randNumber != guess), checkNumber) ("Nice work!  The number is #{randNumber}, and you guessed it in #{counter} tries!" interpolate) println
)

binarySearch checkNumber := method(
	if(randNumber > guess, 
		"Nope, try again.  My number is higher than yours." println, 
		"Nope, try again.  My number is lower than yours." println)

	guess = File standardInput readLine asNumber
	counter = counter + 1
)

binarySearch getMax
binarySearch guessNumber


