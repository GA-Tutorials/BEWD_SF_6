A set of problems designed to reinforce the following topics:

* Data Types
    * Strings
    * Fixnums
    * Floats
    * Booleans
* Variables
* Input and Output
* Control Flow (if statements)
* While Loops
* For Loops


The following exercises are in **order from easiest to hardest**.  Complete as many as you can.  You should create a directory for this lab, and each exercise should be in its own ruby file.  If you feel comfortable with this material, feel free to skip to the more difficult exercises.

***

## Temperature Convertor

Create a simple temperature convertor.  It should function like the example below:

![](https://draftin.com:443/images/13724?token=zVWxJv7jYF2MSoHWlqkt9ZtYK2Qh7fbYFeaKG2pDvemKymvCpeYPXJLnhhBvxKqWaWJnOyDFzNvoAA4BBiZhpXk) 

***

## Guessing Game

Create a program that asks the user to guess a number between 1 and 100.  Once the user guesses a number, the program should say, higher, lower, or tell the user that he got the number correct.  The user should continue to make guesses until he guesses correctly.  Also, once the user guesses correctly, the program should print the number of guesses needed to arrive at the correct answer. Below is sample output:

```
Guess a number between 1 and 100
50
The number is lower than 50.  Guess again
25
The number is lower than 25.  Guess again
13
The number is higher than 13.  Guess again
20
The number is lower than 20.  Guess again
17
The number is higher than 17.  Guess again
18
The number is higher than 18.  Guess again
19
You got it in 7 tries
```

Hint! Check out the Random class for picking a number.

***

#Simple Ascii Art

Using loops (don't just use a bunch of puts statements!), print out a simple ascii art triangle like the one below:


![](https://draftin.com:443/images/13723?token=BHmxwC8rvczzKIKooWZKKld4NS38dPkrPtoReNRRJPZ2UgF_IYKWQT4ChqNZtyzCQm0wIlGE_oGff-UP2PH-ysc) 

If you would like an extra challenge, try asking the user for the number of rows the pyramid should consist of. Here's an example:

![](https://draftin.com:443/images/13722?token=gNud-NApI2IV1pRGx7nAbw2gs_NZTyOLfCCBT9rroZYPhVrQcjCdlJbjhPQkp134rW-GKdNBOYkHUryR7OwIk4g) 

***

## Reverse A String
Reverse a string in place.  In other words, do not create a new string or use other methods on the string such as ```reverse```.  The goal of the problem is to use a loop and the string accessors to figure out which values to swap for other values.  Below is the output.

```
Enter a string
reverse_me
em_esrever
```

## Multiplication Table

Create a 9 x 9 multiplication table like the one below.  Make sure to pay attention to spacing!  Make it look nice!  

![](https://draftin.com:443/images/13725?token=2nclsCLsp6kbIUTevUOuWYh559el-kar1a13oQHazAZPXq_rmQDhMFcFFGQWibEbqNk8PYTbq2QrDn0K2RBqkog) 

For an extra challenge, allow the user to specify the size of the multiplication table (3 x 10, 5 x 5, etc.)


Write a method called `ascii_artify` that will turn a given input string into the ASCII art version of that text.  For example, `ascii_artify("Colt") should print the following to your terminal window:

![Screen Shot 2014-08-13 at 9.57.52 PM.png](https://draftin.com:443/images/19129?token=ZlOqWAvfLCvKSND_uAg00l_EghvHthuE6xKAQRAupWPlzrnUUSqv7HDe53qLVrWUNh1sJMUCHz3dyNVzD_ZFpz0) 

This is a challenging problem, so start small.  Try printing out the ASCII version of a single character first, before you attempt to string them together. Good luck!