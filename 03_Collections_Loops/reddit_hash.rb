require 'json'
require 'typhoeus'
require 'pry'

#STARTER CODE

data = Typhoeus.get('http://www.reddit.com/r/aww.json')
data_hash = JSON.parse(data.body)



#===================================

# Using Pry, play around with the above 'data_hash'.  Try to familiarize yourself with its structure.
		# binding.pry

# Write code to print out the first post's author's name.


# Write code to print out every reddit post's title and score.  You'll need to use some sort of loop.



