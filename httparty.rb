require 'httparty'
require 'awesome_print'

# Now require it in a new ruby script file, and use it to call an album search on the word "White" to the spotify API.
#
# Can you require both httparty and awesome_print to have the output look nice? (remember just require awesome_print and then use ap instead of p)
#
# In the same file, can you write a loop that returns an array of the album names from your search?
#
# Can you write a loop that makes an array containing a string for each album that says "The <<artist name>> made the album: <<album name>> in <<album year>>"

# Use the class methods to get down to business quickly
response = HTTParty.get('https://api.spotify.com/v1/search?q=album:white&type=album')

# response.body
# response.code
# response.message
# response.headers.inspect

body = JSON.parse(response.body)

body['albums']['items'].each do |type| #loops over all album titles and returns as a list
  name = type['name']
end
