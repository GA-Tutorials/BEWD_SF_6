#Warm Up Exercises

* Write a program that outputs the number of minutes in a decade

```ruby
puts 60 * 24 * (365 * 10 + 2)
```

* Write a program that asks a user for their favorite animal.  If the user enters "penguin", print out "Good Choice!".  Otherwise, print out "You should have said penguin"

```ruby
puts "What is your favorite animal?!"
response = gets.chomp
if response == "penguin" || response == "Penguin"
	puts "Good Choice!"
else
	puts "You should have said penguin!"
end
```

* Write a program that asks a user for their age.  If they are under 21, print out "Sorry, kid.  You can't come in here"

```ruby
puts "How old are you?"
response = gets.chomp
if response.to_i < 21
	puts "Go home, kid"
else
	puts "Come on in"
end
```