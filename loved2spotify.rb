#!/usr/bin/env ruby
# sudo gem install json 'rest-client' rspotify

require 'json'
require 'rest_client'
require 'rspotify'
#require 'pp'

## Modify these
# API key, see http://www.lastfm.pl/api/account/create
lastfm_api_key = '37b3b954fa486755824a0934523fa2c1'
# Username
lastfm_username = 'wieczorek1990'
# How many songs were parsing. Set higher than your loved tracks count
lastfm_limit = 250
##

lastfm_root = 'http://ws.audioscrobbler.com/2.0/'
lastfm_method= 'user.getlovedtracks'
lastfm_format = 'json'
lastfm_loved = "#{lastfm_root}?method=#{lastfm_method}&user=#{lastfm_username}&api_key=#{lastfm_api_key}&format=#{lastfm_format}&limit=#{lastfm_limit}"
#PP.pp lastfm_loved

response = RestClient.get lastfm_loved
data = JSON.parse response.body
#PP.pp data
tracks = data['lovedtracks']['track']
#PP.pp tracks

loved = []
for track in tracks
  name = track['name']
  artist = track['artist']['name']
  puts "#{artist} - #{name}"
  query = "#{name}+artist:#{artist}"
  found = RSpotify::Track.search query, limit: 1
  #PP.pp found
  loved.concat found
end
puts
for track in loved
  puts track.uri
end
