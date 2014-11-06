#16 - Deployment

##Warmup:

Write a method that will take a string as an arguement and will return the reverse of the string.  Do not use the built in reverse method!

```ruby
my_reverse("rusty")
	#=> "ytsur"

```

* Twilio Review
* Environment Variables
* Postgres
* Heroku

#Heroku Steps
* Sign Up For Heroku
* Download Heroku Toolbelt
* Run `heroku login`.  It may find a SSH key for you, or you might have to create one.
* Add gem 'pg' and 'rails_12factor' and bundle
* Change your database.yml to use postgres.  See code below.
* `git init`
* `git add .`
* `git commit -m "some message"`
* `heroku create` and optionally `heroku rename`
* `git push heroku master`
* `heroku run rake db:migrate`
* `heroku open`


```yml
default: &default
  adapter: postgresql
  pool: 5
  timeout: 5000

development:
  <<: *default
  database: cat_app_development

test:
  <<: *default
  database: cat_app_test

production:
  <<: *default
  database: cat_app_production
```