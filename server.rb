require 'sinatra'


get '/home' do
	erb :index
end

get '/portfolio' do
	erb :gallery
end

get '/about' do
		@skills = ['git(sometimes)',"html", "CSS","Ruby(a bit)","Spraypaint art""photoshop"]
		@interests = ['dogs (because they are the best)' 'Indie music & concerts' 'B-films' 'indie films']
	erb :aboutme
end

get '/favourite' do
		@fav_links = ["https://alexa.bitmaker.co/wdi/july-2017/this-week", "https://www.reddit.com/", "http://textastrophe.com/" , "http://ca.ign.com/", "http://www.hireharder.com"]
	erb :favlinks
end

# Define a new route to handle get requests to localhost:4567/favourites.
#  2. In this route block, create an instance variable called @fav_links that contains an array of links to your favourite five sites.
# Create a new erb view for this route to respond with.
# In that view, iterate through @fav_links and display each link as an <a> tag.
# Test to make sure it works!

#layouts.erb is required for sinatra to create a consistant layout for webpages
