#!/usr/bin/python
low = 0
high = 100
print "Please think of a number between " + str(low) + " and " + str(high) + "!"
while True:
	ans = (low + high) / 2
	print "Is your secret number " + str(ans) + "?"
	cmd = raw_input("Enter \'h\' to indicate the guess is too high. Enter \'l\' to indicate the guess is too low. Enter \'c\' to indicate I guessed correctly. ")
	if cmd == 'c':
		print "Game over. Your secret number was: " + str(ans)
		break
	elif cmd == 'l':
		low = ans
	elif cmd == 'h':
		high = ans
	else:
		print "Sorry, I did not understand your input."
		continue
