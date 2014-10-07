#Reddit Clone Homework

This week, you're going to create a Reddit clone using Rails.  If you don't know what Reddit is, check it out here(and say goodbye to the rest of your life).

##Goals

* Get more familiar with the rails basics.  By Monday, you should be comfortable making a rails app with all 7 RESTful routes, without relying on a tutorial or notes.
* Begin using model associations
* Use Git throughout the project


Note: you mus use Git for this project.  Commit often.  Upload your code to Github by the end of the weekend.  Do not commit everything at once and then push to Github.  I will be counting your commits!

#Part 1 - Posts

We're going to start out with a very simple app and one model: Post. At the very least, the Post model should contain a title and a link url.  The site's homepage should display a list of all the posts in the database ordered by date. Implement all 7 RESTful routes for the Post model. So far, this is no different than the rails basics we did last week.

#Part 2 - Upvotes

Next, you need to implement the ability to vote posts up or down.  There should be 2 buttons next to each post(upvote and downvote).  A user can click one to increase or decrease the overall score for each post.  For now, there is no user login, so there is no restriction on how many times a user can vote for a post.

Instead of ordering posts by date, you should order posts by score.  The most upvoted posts should appear at the top of the page.

Do you need another model for upvotes, or can it be part of the Post class? 

# Part 3 - Comments

Users should be able to comment on each post.  Unlike Reddit comments, users will not be able to comment on other comments.  You will need a Comment model, and it needs to be associated with a Post.

A user can go to a post's show page to see all the comments associated with that post.  Also on a post's show page, a user can click on an "add a comment" button to create a new comment.  How will you know which post the user is commenting on?

#Part 4 - Other Features

You must attempt to implement at least one of the following features:

* Search - a user can search for specific keywords in posts AND comments. The search field should be part of the page's navbar.
* Sorting posts - a user can click on buttons to sort posts by date(ascending AND descending), upvotes(ascending AND descending), and title alphabetically(ascending AND descending).  As a bonus, try to make the sorting work with JS without reloading the page.
* Post Types - on Reddit, a user can submit a regular link post or a self post(a bunch of text).  Implement this functionality on your site.

#Part 5 - Mega-Bonuses
These features are more challenging to implement:

* User login
* Comments on other comments