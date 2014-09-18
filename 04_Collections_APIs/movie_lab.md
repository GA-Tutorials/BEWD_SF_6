#Movie App

![asd](http://www.omdbapi.com/header.png)


We're going to use the great Open Movie Database API(OMDB) to create our own app where we can search for a movie, rate it, and add it to a "watch later" queue.

Technologies you will be using:

1. OMDB API
3. Typhoeus

#Part 1
Start by familiarizing yourself with the API.  It has a very simple interface.  Look at the docs on the left side of the [OMDB Home Page](http://www.omdbapi.com/)

Use your browser to make requests to the API that return the following information:

1. A list of movies with "Harry" in their title
2. A list of movies with "Star Wars" in their title (pay attention to spaces!)
3. Detailed information about the movie "Boyhood"
4. Detailed information about the "Star Wars" movie coming out in 2015
5. Detailed information about the movie with IMDB ID tt2015381
6. Detailed information, including information from Rotten Tomatoes, about the movie with IMDB ID tt1285016 

#Part 2

Next, we're going to create our own terminal-based interface to the OMDB API.
 
We're going to start simple.  A user can search for some title and view the title and year of matching results.  Here's a sample implementation:


<img src="https://draftin.com:443/images/20389?token=kJyastr700FY_v8xKqumS7FI5WGXQj4_TDbqR-SmI-wBjd89OtgnNCIhrnTlRLyoc8caTBkYZEhBe_ZrUCWywxg" width="800px">


Next, we're going to allow a user to get more detailed information about one of the returned results.  Here's a sample implementation:

<img src="https://draftin.com:443/images/20393?token=Fs9uXASvxzWqkn7xIfYAGYmq-I3z5_GKwwyCo4pGzcxHvf5XMimvSr2RgS0aF6xYZw1HCxZn2tXmwKElZhF307w" width="800px">

You will need to make a separate API request using the IMDB ID of the selected movie.

#Part 3

Next, we're going to allow users to add movies to a watch later list.  You will need to store this information in some sort of data structure.

It's up to you to decide on the interface for a adding a movie to the list, but it could look something like this:

<img src="https://draftin.com:443/images/20443?token=rINQHAYX0bSRRTzmoNrZwh1tc-3JZRUK8qqKVvRW-I1oOj9UxCSdWYm2GGO0MPkBAIZCu8G1qL88MQ4KJIcG-70" width="800px">

Next, you need a way for a user to view all of the movies in his/her watch-later list.  Again, the interface is up to you.

#Part 4
The last feature we're going to add is the ability to rate movies.  We will allow users to rate movies multiple times.  Take a moment to think about the appropriate data structure(s) you'll need.

This is the most open ended of the requirements, but at the very least a user should be able to rate individual movies and view the average rating for each movie.

Lastly, a user should be able to view a list of the top ten highest rated movies in the app.

#Part 5
Add some other features.  Add user profiles and user names, allow users to leave written reviews for movies, or incorporate another API. Get creative and make your app awesome!



