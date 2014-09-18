require 'pry'
require 'typhoeus'
require 'json'

#Make the HTTP request:
reddit_data = Typhoeus.get("http://www.reddit.com/r/aww/.json")

# parse the stuff we care about: response.body
results = JSON.parse(reddit_data.body)

#Printout the first result's title:
results["data"]["children"][0]["data"]["title"]

#Print out the title of each post
results["data"]["children"].each do |post|
	puts post["data"]["title"]
end


binding.pry


#===========================
#SIMPLE JSON PARSING
# data = '{"employees":[
#     {"firstName":"John", "lastName":"Doe"}, 
#     {"firstName":"Anna", "lastName":"Smith"},
#     {"firstName":"Peter", "lastName":"Jones"}
# ]}'
# clean_data = JSON.parse(response )
# => {"employees"=>
#   [{"firstName"=>"John", "lastName"=>"Doe"},
#    {"firstName"=>"Anna", "lastName"=>"Smith"},
#    {"firstName"=>"Peter", "lastName"=>"Jones"}]}

