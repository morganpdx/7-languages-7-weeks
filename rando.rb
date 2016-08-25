#!/usr/bin/ruby

puts "I'm going to pick a random number.  What is the upper limit?"
max = gets().to_i
x = rand(max)
count = 1
puts "Ok, now guess a number between 0 and #{max}"
guess = gets().to_i
while x != guess
	if x > guess
		puts "Nope, try again.  My number is higher than yours."
		guess = gets().to_i
		count = count + 1
	else
		puts "Nope, try again.  My number is lower than yours."
		guess = gets().to_i
		count = count + 1
	end
end
puts "Nice work!  The number is #{x}, and you guessed it in #{count} tries!"
